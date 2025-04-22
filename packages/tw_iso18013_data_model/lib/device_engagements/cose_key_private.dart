import 'dart:convert';
import 'dart:typed_data';

import 'package:cbor/cbor.dart';

import 'package:tw_crypto/tw_crypto.dart';
import 'package:tw_iso18013_data_model/device_engagements/cose_key.dart';

/// COSE_Key + private key
class CoseKeyPrivate {
  CoseKeyPrivate({required this.key, required this.d, this.secureEnclaveKeyID});

  factory CoseKeyPrivate.fromData({required Uint8List privateKeyX963Data, ECCurveType crv = ECCurveType.p256}) {
    final xyk = privateKeyX963Data.sublist(1);
    final kLen = xyk.length ~/ 3;
    final x = xyk.sublist(0, kLen);
    final y = xyk.sublist(kLen, kLen * 2);
    final d = xyk.sublist(kLen * 2, kLen * 3);
    return CoseKeyPrivate.fromXYD(x: x, y: y, d: d, crv: crv);
  }

  factory CoseKeyPrivate.fromXYD({
    required Uint8List x,
    required Uint8List y,
    required Uint8List d,
    ECCurveType crv = ECCurveType.p256,
  }) {
    return CoseKeyPrivate(key: CoseKey(crv: crv, x: x, y: y), d: d);
  }

  factory CoseKeyPrivate.fromKeys({required Uint8List publicKeyX963Data, required Uint8List secureEnclaveKeyID}) {
    return CoseKeyPrivate(
      key: CoseKey.fromData(x963Representation: publicKeyX963Data),
      d: Uint8List(0),
      secureEnclaveKeyID: secureEnclaveKeyID,
    );
  }

  static Future<CoseKeyPrivate> fromCrv(ECCurveType crv) async {
    final privateKeyX963Data = await TwCrypto.createPrivateKeyCrv(crv);
    return CoseKeyPrivate.fromData(privateKeyX963Data: privateKeyX963Data, crv: crv);
  }

  final CoseKey key;
  final Uint8List d;
  final Uint8List? secureEnclaveKeyID;

  /// An ANSI x9.63 representation of the private key.
  Uint8List getX963Representation() {
    final builder = BytesBuilder();
    builder.addByte(0x04);
    builder.add(key.x);
    builder.add(key.y);
    builder.add(d);
    return builder.toBytes();
  }

  static CoseKeyPrivate? fromBase64(String base64) {
    CborValue obj;

    try {
      final bytes = base64Decode(base64);
      obj = cbor.decode(bytes);
      if (obj is! CborMap) {
        return null;
      }
    } catch (_) {
      return null;
    }

    final cd = obj[const CborSmallInt(-4)];
    if (cd is! CborString) {
      return null;
    }

    final coseKey = CoseKey.fromCBOR(obj);
    if (coseKey == null) {
      return null;
    }

    return CoseKeyPrivate(key: coseKey, d: Uint8List.fromList(cd.utf8Bytes));
  }
}
