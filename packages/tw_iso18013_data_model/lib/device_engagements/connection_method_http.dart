import 'package:cbor/cbor.dart';

import 'package:tw_iso18013_data_model/cbor_encodable.dart';

class ConnectionMethodHttp implements CborEncodable {
  ConnectionMethodHttp(this.uriWebsite);

  final String uriWebsite;

  static const METHOD_TYPE = 4;
  static const METHOD_MAX_VERSION = 1;
  static const OPTION_KEY_URI_WEBSITE = 0;

  static ConnectionMethodHttp? fromCBOR(CborValue cbor) {
    if (cbor is! CborList || cbor.length != 3) {
      return null;
    }

    final [type, version, options] = cbor.toObject() as List<dynamic>;

    if (type is! int || type != METHOD_TYPE || version is! int || version > METHOD_MAX_VERSION || options is! Map) {
      return null;
    }

    final url = options[OPTION_KEY_URI_WEBSITE];
    if (url is! String) {
      return null;
    }

    return ConnectionMethodHttp(url);
  }

  @override
  CborValue toCBOR() {
    return CborValue([
      METHOD_TYPE,
      METHOD_MAX_VERSION,
      {OPTION_KEY_URI_WEBSITE: uriWebsite},
    ]);
  }
}
