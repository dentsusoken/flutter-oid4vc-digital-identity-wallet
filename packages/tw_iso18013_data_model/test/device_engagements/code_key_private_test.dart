import 'dart:convert';
import 'dart:typed_data';

import 'package:cbor/cbor.dart';
import 'package:test/test.dart';
import 'package:tw_crypto/tw_crypto.dart';
import 'package:tw_iso18013_data_model/device_engagements/device_engagements.dart';

void main() {
  group('CoseKeyPrivate', () {
    test('creates from data with default curve P256', () {
      // Create sample X9.63 data: 0x04 || x || y || d
      final x = Uint8List.fromList([1, 2, 3, 4]);
      final y = Uint8List.fromList([5, 6, 7, 8]);
      final d = Uint8List.fromList([9, 10, 11, 12]);

      final builder = BytesBuilder();
      builder.addByte(0x04);
      builder.add(x);
      builder.add(y);
      builder.add(d);
      final x963Data = builder.toBytes();

      final privateKey = CoseKeyPrivate.fromData(privateKeyX963Data: x963Data);

      expect(privateKey.key.crv, equals(ECCurveType.p256));
      expect(privateKey.key.x, equals(x));
      expect(privateKey.key.y, equals(y));
      expect(privateKey.d, equals(d));
      expect(privateKey.secureEnclaveKeyID, isNull);
    });

    test('creates from X, Y, D coordinates', () {
      final x = Uint8List.fromList([1, 2, 3, 4]);
      final y = Uint8List.fromList([5, 6, 7, 8]);
      final d = Uint8List.fromList([9, 10, 11, 12]);

      final privateKey = CoseKeyPrivate.fromXYD(x: x, y: y, d: d);

      expect(privateKey.key.crv, equals(ECCurveType.p256));
      expect(privateKey.key.x, equals(x));
      expect(privateKey.key.y, equals(y));
      expect(privateKey.d, equals(d));
      expect(privateKey.secureEnclaveKeyID, isNull);
    });

    test('creates from secure enclave keys', () {
      final x = Uint8List.fromList([1, 2, 3, 4]);
      final y = Uint8List.fromList([5, 6, 7, 8]);
      final secureEnclaveID = Uint8List.fromList([13, 14, 15, 16]);

      // Create x963 format for public key: 0x04 || x || y
      final builder = BytesBuilder();
      builder.addByte(0x04);
      builder.add(x);
      builder.add(y);
      final publicKeyX963 = builder.toBytes();

      final privateKey = CoseKeyPrivate.fromKeys(publicKeyX963Data: publicKeyX963, secureEnclaveKeyID: secureEnclaveID);

      expect(privateKey.key.x, equals(x));
      expect(privateKey.key.y, equals(y));
      expect(privateKey.d, equals(Uint8List(0))); // Empty d for secure enclave keys
      expect(privateKey.secureEnclaveKeyID, equals(secureEnclaveID));
    });

    test('generates X9.63 representation correctly', () {
      final x = Uint8List.fromList([1, 2, 3, 4]);
      final y = Uint8List.fromList([5, 6, 7, 8]);
      final d = Uint8List.fromList([9, 10, 11, 12]);

      final privateKey = CoseKeyPrivate.fromXYD(x: x, y: y, d: d);
      final x963 = privateKey.getX963Representation();

      expect(x963[0], equals(0x04)); // Check prefix byte
      expect(x963.sublist(1, 5), equals(x)); // Check x coordinate
      expect(x963.sublist(5, 9), equals(y)); // Check y coordinate
      expect(x963.sublist(9), equals(d)); // Check private key d
    });

    test('creates from base64 encoded string', () {
      final x = Uint8List.fromList([1, 2, 3, 4]);
      final y = Uint8List.fromList([5, 6, 7, 8]);
      final key = CoseKey.fromXY(x: x, y: y);
      final d = Uint8List.fromList([9, 10, 11, 12]);
      var cborMap = key.toCBOR() as CborMap;
      cborMap[const CborSmallInt(-4)] = CborString.fromUtf8(d);

      final base64String = base64Encode(cbor.encode(cborMap));
      final privateKey = CoseKeyPrivate.fromBase64(base64String);

      expect(privateKey, isNotNull);
      expect(privateKey?.key.x, equals(x));
      expect(privateKey?.key.y, equals(y));
      expect(privateKey?.d, equals(d));
    });

    test('returns null for invalid base64 string', () {
      expect(CoseKeyPrivate.fromBase64('invalid base64'), isNull);
    });
  });
}
