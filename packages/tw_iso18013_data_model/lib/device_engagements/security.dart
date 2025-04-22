import 'dart:typed_data';

import 'package:cbor/cbor.dart';
import 'package:tw_iso18013_data_model/cbor_encodable.dart';
import 'package:tw_iso18013_data_model/device_engagements/cose_key.dart';
import 'package:tw_iso18013_data_model/extensions/cbor_extension.dart';

/// Security = [int, EDeviceKeyBytes ]
class Security implements CborEncodable {
  Security({required this.deviceKey, this.d});

  // private key for holder only
  final Uint8List? d;

  /// security struct. of the holder transferred (only the public key of the mDL is encoded)
  final CoseKey deviceKey;

  static const cipherSuiteIdentifier = 1;

  static Security? fromCBOR(CborValue obj) {
    if (obj is! CborList || obj.length < 2) {
      return null;
    }

    final cipherSuite = obj[0];
    if (cipherSuite is! CborSmallInt || cipherSuite.value != cipherSuiteIdentifier) {
      return null;
    }

    final deviceKey = CoseKey.fromCBOR(obj[1]);
    if (deviceKey == null) {
      return null;
    }

    return Security(d: Uint8List(0), deviceKey: deviceKey);
  }

  @override
  CborValue toCBOR() {
    return CborList([const CborSmallInt(Security.cipherSuiteIdentifier), deviceKey.taggedEncoded]);
  }
}
