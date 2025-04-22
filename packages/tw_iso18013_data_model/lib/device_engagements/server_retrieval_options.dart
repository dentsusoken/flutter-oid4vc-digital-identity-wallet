import 'package:cbor/cbor.dart';
import 'package:tw_iso18013_data_model/cbor_encodable.dart';
import 'package:tw_iso18013_data_model/device_engagements/server_retrieval_option.dart';

/// Server retrieval information
class ServerRetrievalOptions extends CborEncodable {
  ServerRetrievalOptions({this.webAPI, this.oIDC});

  final ServerRetrievalOption? webAPI;
  final ServerRetrievalOption? oIDC;

  bool get isEmpty => webAPI == null && oIDC == null;

  static ServerRetrievalOptions? fromCBOR(CborValue obj) {
    if (obj is! CborMap) {
      return null;
    }

    final webAPI = obj[_ServerRetrievalOptionsKey.webApi.key];
    final oIDC = obj[_ServerRetrievalOptionsKey.oidc.key];

    return ServerRetrievalOptions(
      webAPI: webAPI != null ? ServerRetrievalOption.fromCBOR(webAPI) : null,
      oIDC: oIDC != null ? ServerRetrievalOption.fromCBOR(oIDC) : null,
    );
  }

  @override
  CborValue toCBOR() {
    return CborMap({
      if (webAPI != null) _ServerRetrievalOptionsKey.webApi.key: webAPI!.toCBOR(),
      if (oIDC != null) _ServerRetrievalOptionsKey.oidc.key: oIDC!.toCBOR(),
    });
  }
}

enum _ServerRetrievalOptionsKey {
  webApi,
  oidc;

  CborString get key => CborString(name);
}
