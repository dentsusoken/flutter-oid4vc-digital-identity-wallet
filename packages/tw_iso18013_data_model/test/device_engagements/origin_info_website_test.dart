import 'package:cbor/cbor.dart';
import 'package:test/test.dart';
import 'package:tw_iso18013_data_model/tw_iso18013_data_model.dart';

void main() {
  group('OriginInfoWebsite', () {
    test('fromCBOR returns null for invalid input', () {
      expect(OriginInfoWebsite.fromCBOR(CborValue(123)), isNull);
      expect(OriginInfoWebsite.fromCBOR(CborValue({})), isNull);
      expect(OriginInfoWebsite.fromCBOR(CborValue({'cat': 'invalid'})), isNull);
      expect(OriginInfoWebsite.fromCBOR(CborValue({'cat': 0, 'type': 'invalid'})), isNull);
      expect(OriginInfoWebsite.fromCBOR(CborValue({'cat': 0, 'type': 99})), isNull);
      expect(OriginInfoWebsite.fromCBOR(CborValue({'cat': 0, 'type': 100, 'Details': 'invalid'})), isNull);
      expect(
        OriginInfoWebsite.fromCBOR(
          CborValue({
            'cat': 0,
            'type': 100,
            'Details': {'baseUrl': 123},
          }),
        ),
        isNull,
      );
    });

    test('fromCBOR creates valid object', () {
      final info = OriginInfoWebsite.fromCBOR(
        CborValue({
          'cat': OriginInfoWebsite.catDelivery,
          'type': OriginInfoWebsite.type,
          'Details': {'baseUrl': 'https://example.com'},
        }),
      );

      expect(info, isNotNull);
      expect(info?.mCat, equals(OriginInfoWebsite.catDelivery));
      expect(info?.mBaseUrl, equals('https://example.com'));
    });

    test('toCBOR creates valid CBOR', () {
      final info = OriginInfoWebsite(mCat: OriginInfoWebsite.catReceive, mBaseUrl: 'https://test.com');

      final cbor = info.toCBOR();
      final map = cbor.toObject() as Map;

      expect(map['cat'], equals(OriginInfoWebsite.catReceive));
      expect(map['type'], equals(OriginInfoWebsite.type));
      expect(map['Details'], isA<Map<dynamic, dynamic>>());
      expect(map['Details']['baseUrl'], equals('https://test.com'));
    });

    test('roundtrip encoding works', () {
      final original = OriginInfoWebsite(mCat: OriginInfoWebsite.catDelivery, mBaseUrl: 'https://example.org');

      final encoded = original.toCBOR();
      final decoded = OriginInfoWebsite.fromCBOR(encoded);

      expect(decoded?.mCat, equals(original.mCat));
      expect(decoded?.mBaseUrl, equals(original.mBaseUrl));
    });
  });
}
