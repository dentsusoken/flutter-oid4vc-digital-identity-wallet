import 'dart:typed_data';

import 'package:cbor/cbor.dart';
import 'package:tw_iso18013_data_model/cbor_encodable.dart';
import 'package:tw_iso18013_data_model/extensions/extensions.dart';
import 'package:tw_iso18013_data_model/issuer_auths/device_key_info.dart';
import 'package:tw_iso18013_data_model/issuer_auths/digest_algorithm_kind.dart';
import 'package:tw_iso18013_data_model/issuer_auths/validity_info.dart';
import 'package:tw_iso18013_data_model/issuer_auths/value_digests.dart';
import 'package:tw_iso18013_data_model/types.dart';

class MobileSecurityObject extends CborEncodable {
  MobileSecurityObject({
    this.version = defaultVersion,
    required this.digestAlgorithm,
    required this.valueDigests,
    required this.deviceKeyInfo,
    required this.docType,
    required this.validityInfo,
  });

  final String version;
  final String digestAlgorithm;
  final ValueDigests valueDigests;
  final DeviceKeyInfo deviceKeyInfo;
  final DocType docType;
  final ValidityInfo validityInfo;

  static const defaultVersion = '1.0';
  static const defaultDigestAlgorithm = DigestAlgorithmKind.sha256;

  @override
  CborValue toCBOR() {
    return CborMap({
      _Keys.version.key: CborString(version),
      _Keys.digestAlgorithm.key: CborString(digestAlgorithm),
      _Keys.valueDigests.key: valueDigests.toCBOR(),
      _Keys.deviceKeyInfo.key: deviceKeyInfo.toCBOR(),
      _Keys.docType.key: CborString(docType),
      _Keys.validityInfo.key: validityInfo.toCBOR(),
    });
  }

  static MobileSecurityObject? fromCBOR(CborValue cbor) {
    if (cbor is! CborMap) {
      return null;
    }

    final version = cbor[_Keys.version.key];
    if (version is! CborString) {
      return null;
    }

    final digestAlgorithm = cbor[_Keys.digestAlgorithm.key];
    if (digestAlgorithm is! CborString) {
      return null;
    }

    final valueDigests = ValueDigests.fromCBOR(cbor[_Keys.valueDigests.key]);
    if (valueDigests == null) {
      return null;
    }

    final deviceKeyInfo = DeviceKeyInfo.fromCBOR(cbor[_Keys.deviceKeyInfo.key]);
    if (deviceKeyInfo == null) {
      return null;
    }

    final docType = cbor[_Keys.docType.key];
    if (docType is! CborString) {
      return null;
    }

    final validityInfo = ValidityInfo.fromCBOR(cbor[_Keys.validityInfo.key]);
    if (validityInfo == null) {
      return null;
    }

    return MobileSecurityObject(
      version: version.toString(),
      digestAlgorithm: digestAlgorithm.toString(),
      valueDigests: valueDigests,
      deviceKeyInfo: deviceKeyInfo,
      docType: docType.toString(),
      validityInfo: validityInfo,
    );
  }

  static MobileSecurityObject? fromData(Uint8List data) {
    // MobileSecurityObjectBytes = #6.24(bstr .cbor MobileSecurityObject)
    try {
      final obj = cborDecode(data);
      if (!obj.hasTag(24)) {
        return null;
      }

      final bytes = obj.decodeTaggedBytes();
      if (bytes == null) {
        return null;
      }

      final cbor = cborDecode(bytes);
      return fromCBOR(cbor);
    } catch (_) {
      return null;
    }
  }
}

enum _Keys { version, digestAlgorithm, valueDigests, deviceKeyInfo, docType, validityInfo }
