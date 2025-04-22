import 'dart:typed_data';

import 'package:cbor/cbor.dart';
import 'package:tw_crypto/tw_crypto.dart';
import 'package:tw_iso18013_data_model/cbor_encodable.dart';

class CoseKey implements CborEncodable {
  CoseKey({required this.crv, this.kty = 2, required this.x, required this.y});

  factory CoseKey.fromData({ECCurveType crv = ECCurveType.p256, required Uint8List x963Representation}) {
    final keyData = x963Representation.sublist(1);
    final count = keyData.length ~/ 2;
    return CoseKey(crv: crv, x: keyData.sublist(0, count), y: keyData.sublist(count));
  }

  factory CoseKey.fromXY({ECCurveType crv = ECCurveType.p256, required Uint8List x, required Uint8List y}) {
    return CoseKey(crv: crv, x: x, y: y);
  }

  /// EC identifier
  final ECCurveType crv;

  /// key type
  final int kty;

  /// value of x-coordinate
  final Uint8List x;

  /// value of y-coordinate
  final Uint8List y;

  /// Parse a [CborValue] into a [CoseKey].
  static CoseKey? fromCBOR(CborValue obj) {
    final map = obj.toObject();
    if (map is! Map) {
      return null;
    }

    final crv = map[_Keys.crv.value];
    if (crv is! int) {
      return null;
    }

    final kty = map[_Keys.kty.value];
    if (kty is! int) {
      return null;
    }

    final x = map[_Keys.x.value];
    if (x is! List<int>) {
      return null;
    }
    final y = map[_Keys.y.value];
    if (y is! List<int>) {
      return null;
    }

    return CoseKey(crv: ECCurveType.fromValue(crv), kty: kty, x: Uint8List.fromList(x), y: Uint8List.fromList(y));
  }

  /// Convert the [CoseKey] to a [CborValue].
  @override
  CborValue toCBOR() =>
      CborValue({_Keys.crv.value: crv.value, _Keys.kty.value: kty, _Keys.x.value: x, _Keys.y.value: y});

  /// An ANSI x9.63 representation of the public key.
  Uint8List getX963Representation() {
    final ret = BytesBuilder();
    ret.addByte(0x04);
    ret.add(x);
    ret.add(y);
    return ret.toBytes();
  }
}

enum _Keys {
  crv(-1),
  kty(1),
  x(-2),
  y(-3);

  const _Keys(this.value);
  final int value;
}
