import 'dart:typed_data';

import 'package:cbor/cbor.dart';

import 'package:tw_iso18013_data_model/cbor_encodable.dart';
import 'package:tw_iso18013_data_model/extensions/extensions.dart';
import 'package:tw_iso18013_data_model/issuer_auths/issuer_auth.dart';
import 'package:tw_iso18013_data_model/mdoc_responses/issuer_name_spaces.dart';

class IssuerSigned extends CborEncodable {
  IssuerSigned({required this.issuerNameSpaces, required this.issuerAuth});

  static IssuerSigned? fromData(Uint8List data) {
    final value = cbor.decode(Uint16List.fromList(data));
    return fromCBOR(value);
  }

  static IssuerSigned? fromCBOR(CborValue? value) {
    if (value is CborMap) {
      final map = value;

      final cia = IssuerAuth.fromCBOR(map[_Keys.issuerAuth.key]);
      if (cia == null) {
        return null;
      }

      final cn = IssuerNameSpaces.fromCBOR(map[_Keys.issuerNameSpaces.key]);

      return IssuerSigned(issuerNameSpaces: cn, issuerAuth: cia);
    }

    return null;
  }

  @override
  CborValue toCBOR() {
    final value = CborMap({_Keys.issuerAuth.key: issuerAuth.toCBOR()});
    if (issuerNameSpaces != null) {
      value[_Keys.issuerNameSpaces.key] = issuerNameSpaces!.toCBOR();
    }
    return value;
  }

  final IssuerNameSpaces? issuerNameSpaces;
  final IssuerAuth issuerAuth;
}

enum _Keys { issuerNameSpaces, issuerAuth }
