import 'package:cbor/cbor.dart';
import 'package:test/test.dart';
import 'package:tw_iso18013_data_model/device_engagements/connection_method_http.dart';

void main() {
  group('ConnectionMethodHttp', () {
    test('should create a connection method http', () {
      final connectionMethodHttp = ConnectionMethodHttp('https://example.com');
      expect(connectionMethodHttp.uriWebsite, 'https://example.com');
    });

    test('should create a connection method http from cbor', () {
      final cbor = CborList([
        CborSmallInt(ConnectionMethodHttp.METHOD_TYPE),
        CborSmallInt(ConnectionMethodHttp.METHOD_MAX_VERSION),
        CborMap({CborSmallInt(ConnectionMethodHttp.OPTION_KEY_URI_WEBSITE): CborString('https://example.com')}),
      ]);
      final connectionMethodHttp = ConnectionMethodHttp.fromCBOR(cbor);
      expect(connectionMethodHttp?.uriWebsite, 'https://example.com');
    });

    test('should return null if cbor is not a connection method http', () {
      final cbor = CborList([CborSmallInt(ConnectionMethodHttp.METHOD_TYPE)]);
      expect(ConnectionMethodHttp.fromCBOR(cbor), isNull);
    });
  });
}
