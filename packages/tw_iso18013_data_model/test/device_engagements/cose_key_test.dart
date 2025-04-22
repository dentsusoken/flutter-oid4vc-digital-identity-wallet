import 'dart:typed_data';
import 'package:test/test.dart';
import 'package:tw_iso18013_data_model/device_engagements/cose_key.dart';
import 'package:tw_crypto/tw_crypto.dart';
import 'package:cbor/cbor.dart';

void main() {
  group('CoseKey', () {
    test('creates key from x963 representation', () {
      final x = Uint8List.fromList([1, 2, 3, 4]);
      final y = Uint8List.fromList([5, 6, 7, 8]);

      // Create x963 format: 0x04 || x || y
      final builder = BytesBuilder();
      builder.addByte(0x04);
      builder.add(x);
      builder.add(y);
      final x963Data = builder.toBytes();

      final key = CoseKey.fromData(x963Representation: x963Data);

      expect(key.crv, equals(ECCurveType.p256));
      expect(key.kty, equals(2));
      expect(key.x, equals(x));
      expect(key.y, equals(y));
    });

    test('creates key from x and y coordinates', () {
      final x = Uint8List.fromList([1, 2, 3, 4]);
      final y = Uint8List.fromList([5, 6, 7, 8]);

      final key = CoseKey.fromXY(x: x, y: y);

      expect(key.crv, equals(ECCurveType.p256));
      expect(key.kty, equals(2));
      expect(key.x, equals(x));
      expect(key.y, equals(y));
    });

    test('converts to and from CBOR', () {
      final x = Uint8List.fromList([1, 2, 3, 4]);
      final y = Uint8List.fromList([5, 6, 7, 8]);
      final originalKey = CoseKey(crv: ECCurveType.p256, x: x, y: y);

      final cbor = originalKey.toCBOR();
      final parsedKey = CoseKey.fromCBOR(cbor);

      expect(parsedKey, isNotNull);
      expect(parsedKey?.crv, equals(originalKey.crv));
      expect(parsedKey?.kty, equals(originalKey.kty));
      expect(parsedKey?.x, equals(originalKey.x));
      expect(parsedKey?.y, equals(originalKey.y));
    });

    test('returns null when parsing invalid CBOR', () {
      final invalidCbor = CborValue({'invalid': 'data'});
      expect(CoseKey.fromCBOR(invalidCbor), isNull);
    });

    test('generates correct x963 representation', () {
      final x = Uint8List.fromList([1, 2, 3, 4]);
      final y = Uint8List.fromList([5, 6, 7, 8]);
      final key = CoseKey(crv: ECCurveType.p256, x: x, y: y);

      final x963 = key.getX963Representation();

      expect(x963[0], equals(0x04)); // Check prefix byte
      expect(x963.sublist(1, 5), equals(x)); // Check x coordinate
      expect(x963.sublist(5), equals(y)); // Check y coordinate
    });
  });
}
