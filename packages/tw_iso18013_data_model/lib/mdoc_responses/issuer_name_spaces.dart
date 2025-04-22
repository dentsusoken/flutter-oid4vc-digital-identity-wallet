import 'package:cbor/cbor.dart';
import 'package:tw_iso18013_data_model/cbor_encodable.dart';

class IssuerNameSpaces extends CborEncodable {
  @override
  CborValue toCBOR() {
    // TODO(Maku): implement toCBOR
    throw UnimplementedError();
  }

  static IssuerNameSpaces? fromCBOR(CborValue? value) {
    return null;
  }
}
