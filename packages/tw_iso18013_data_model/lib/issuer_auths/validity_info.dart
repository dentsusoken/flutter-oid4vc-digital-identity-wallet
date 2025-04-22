import 'package:cbor/cbor.dart';
import 'package:tw_iso18013_data_model/cbor_encodable.dart';
import 'package:tw_iso18013_data_model/extensions/extensions.dart';

class ValidityInfo extends CborEncodable {
  ValidityInfo({required this.signed, required this.validFrom, required this.validUtil, this.expectedUpdate});

  final String signed;
  final String validFrom;
  final String validUtil;
  final String? expectedUpdate;

  @override
  CborValue toCBOR() {
    return CborMap({
      _Keys.signed.key: CborString(signed),
      _Keys.validFrom.key: CborDateTimeString.fromString(validFrom),
      _Keys.validUntil.key: CborDateTimeString.fromString(validUtil),
      if (expectedUpdate != null) _Keys.expectedUpdate.key: CborDateTimeString.fromString(expectedUpdate!),
    });
  }

  static ValidityInfo? fromCBOR(CborValue? map) {
    if (map is! CborMap) {
      return null;
    }

    final signed = map[_Keys.signed.key];
    if (signed is! CborString) {
      return null;
    }

    final validFrom = map[_Keys.validFrom.key];
    if (validFrom is! CborDateTimeString) {
      return null;
    }

    final validUntil = map[_Keys.validUntil.key];
    if (validUntil is! CborDateTimeString) {
      return null;
    }

    String? expectedUpdate;
    final cExpectedUpdate = map[_Keys.expectedUpdate.key];
    if (cExpectedUpdate is! CborDateTimeString) {
      expectedUpdate = cExpectedUpdate.toString();
    }

    return ValidityInfo(
      signed: signed.toString(),
      validFrom: validFrom.toString(),
      validUtil: validUntil.toString(),
      expectedUpdate: expectedUpdate,
    );
  }
}

enum _Keys { signed, validFrom, validUntil, expectedUpdate }
