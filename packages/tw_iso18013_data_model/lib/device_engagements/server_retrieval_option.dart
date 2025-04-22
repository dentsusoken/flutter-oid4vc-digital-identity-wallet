import 'package:cbor/cbor.dart';
import 'package:tw_iso18013_data_model/cbor_encodable.dart';

class ServerRetrievalOption extends CborEncodable {
  ServerRetrievalOption({required this.url, required this.token, this.version = versionImpl});

  final int version;
  final String url;
  final String token;

  static const versionImpl = 1;

  static ServerRetrievalOption? fromCBOR(CborValue obj) {
    if (obj is! CborList || obj.length < 3) {
      return null;
    }

    final [version, url, token] = obj.toObject() as List<dynamic>;
    if (version is! int || version != versionImpl || url is! String || token is! String) {
      return null;
    }

    return ServerRetrievalOption(url: url, token: token);
  }

  @override
  CborValue toCBOR() => CborValue([versionImpl, url, token]);
}
