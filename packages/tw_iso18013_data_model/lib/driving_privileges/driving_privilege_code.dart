import 'package:cbor/cbor.dart';
import 'package:tw_iso18013_data_model/cbor_encodable.dart';
import 'package:tw_iso18013_data_model/extensions/extensions.dart';

/// Driving privilege code
class DrivingPrivilegeCode extends CborEncodable {
  DrivingPrivilegeCode({required this.code, this.sign, this.value});

  final String code;
  final String? sign;
  final String? value;

  @override
  CborValue toCBOR() {
    return CborMap({
      _Keys.code.key: CborString(code),
      if (sign != null) _Keys.sign.key: CborString(sign!),
      if (value != null) _Keys.value.key: CborString(value!),
    });
  }

  static DrivingPrivilegeCode? fromCBOR(CborValue cbor) {
    if (cbor is! CborMap) {
      return null;
    }

    final code = cbor[_Keys.code.key];
    if (code == null || code is! CborString) {
      return null;
    }

    final sign = cbor[_Keys.sign.key];
    if (sign != null && sign is! CborString) {
      return null;
    }

    final value = cbor[_Keys.value.key];
    if (value != null && value is! CborString) {
      return null;
    }

    return DrivingPrivilegeCode(code: code.toString(), sign: sign?.toString(), value: value?.toString());
  }
}

enum _Keys { code, sign, value }
