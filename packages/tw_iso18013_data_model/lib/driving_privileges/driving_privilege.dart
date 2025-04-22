import 'package:cbor/cbor.dart';

import 'package:tw_iso18013_data_model/cbor_encodable.dart';
import 'package:tw_iso18013_data_model/driving_privileges/driving_privilege_code.dart';
import 'package:tw_iso18013_data_model/extensions/extensions.dart';

/// The categories of vehicles/restrictions/conditions contain information describing the driving privileges of the mDL holder
class DrivingPrivilege extends CborEncodable {
  DrivingPrivilege({required this.vehicleCategoryCode, this.issueDate, this.expiryDate, required this.codes});

  /// Vehicle category code as per ISO/IEC 18013-1
  final String vehicleCategoryCode;

  /// Date of issue encoded as full-date
  final String? issueDate;

  /// Date of expiry encoded as full-date
  final String? expiryDate;

  /// Array of code info
  final List<DrivingPrivilegeCode> codes;

  @override
  CborValue toCBOR() {
    return CborMap({
      _Keys.vehicleCategoryCode.key: CborString(vehicleCategoryCode),
      if (issueDate != null) _Keys.issueDate.key: CborDateTimeString.fromString(issueDate!),
      if (expiryDate != null) _Keys.expiryDate.key: CborDateTimeString.fromString(expiryDate!),
      _Keys.codes.key: CborList.of(codes.map((code) => code.toCBOR())),
    });
  }

  static DrivingPrivilege? fromCBOR(CborValue cbor) {
    if (cbor is! CborMap) {
      return null;
    }

    final vehicleCategoryCode = cbor[_Keys.vehicleCategoryCode.key];
    if (vehicleCategoryCode is! CborString) {
      return null;
    }

    final ccodes = cbor[_Keys.codes.key];
    if (ccodes is! CborList) {
      return null;
    }

    final codes =
        ccodes
            .map((code) => DrivingPrivilegeCode.fromCBOR(code))
            .where((code) => code != null)
            .cast<DrivingPrivilegeCode>()
            .toList();
    if (codes.isEmpty) {
      return null;
    }

    String? issueDate;
    final cid = cbor[_Keys.issueDate.key];
    if (cid is CborDateTimeString) {
      issueDate = cid.toString();
    }

    String? expiryDate;
    final ced = cbor[_Keys.expiryDate.key];
    if (ced is CborDateTimeString) {
      expiryDate = ced.toString();
    }

    return DrivingPrivilege(
      vehicleCategoryCode: vehicleCategoryCode.toString(),
      issueDate: issueDate,
      expiryDate: expiryDate,
      codes: codes,
    );
  }
}

enum _Keys { vehicleCategoryCode, issueDate, expiryDate, codes }
