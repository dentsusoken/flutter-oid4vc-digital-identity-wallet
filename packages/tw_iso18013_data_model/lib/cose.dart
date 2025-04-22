import 'dart:typed_data';

import 'package:cbor/cbor.dart';
import 'package:tw_iso18013_data_model/cbor_encodable.dart';
import 'package:tw_iso18013_data_model/types.dart';

/// COSE Message Identification
enum CoseType {
  /// COSE Single Signer Data Object
  /// Only one signature is applied on the message payload
  sign1('Signature1'),
  mac0('MAC0');

  const CoseType(this.value);

  factory CoseType.fromRaw(String value) {
    switch (value) {
      case 'Signature1':
        return CoseType.sign1;
      case 'MAC0':
        return CoseType.mac0;
      default:
        throw ArgumentError('Invalid COSE Type: $value');
    }
  }

  final String value;

  static (CoseType, List<CborValue>)? fromData(Uint8List data) {
    final cose = cborDecode(data);

    return null;
  }
}

/// ECDSA Algorithm Values defined in
///
/// Table1 in rfc/rfc8152#section-16.2
enum CoseVerifyAlgorithm {
  es256(6), // ECDSA w/ SHA-256
  es384(34), // ECDSA w/ SHA-384
  es512(35); // ECDSA w/ SHA-512

  const CoseVerifyAlgorithm(this.value);

  factory CoseVerifyAlgorithm.fromRaw(int value) {
    switch (value) {
      case 6:
        return CoseVerifyAlgorithm.es256;
      case 34:
        return CoseVerifyAlgorithm.es384;
      case 35:
        return CoseVerifyAlgorithm.es512;
      default:
        throw ArgumentError('Invalid Verify Algorithm: $value');
    }
  }

  final int value;
}

/// MAC Algorithm Values
///
/// Table 7  in rfc/rfc8152#section-16.2
enum CoseMacAlgorithm {
  /// HMAC w/ SHA-256
  hmac256(5),

  /// HMAC w/ SHA-384
  hmac384(6),

  /// HMAC w/ SHA-512
  hmac512(7);

  const CoseMacAlgorithm(this.value);

  factory CoseMacAlgorithm.fromRaw(int value) {
    switch (value) {
      case 5:
        return CoseMacAlgorithm.hmac256;
      case 6:
        return CoseMacAlgorithm.hmac384;
      case 7:
        return CoseMacAlgorithm.hmac512;
      default:
        throw ArgumentError('Invalid MAC Algorithm: $value');
    }
  }

  final int value;
}

enum _CoseHeaders {
  keyId(4),
  algorithm(1);

  const _CoseHeaders(this.value);

  final int value;
}

class CoseHeader extends CborEncodable {
  CoseHeader({required this.rawHeader, this.keyId, this.algorithm});

  final CborValue? rawHeader;
  final ByteList? keyId;
  final int? algorithm;

  static CoseHeader? fromCBOR({required CborValue cbor}) {
    return null;
  }

  static CoseHeader? fromParameters({int? algorithm, bool? isNegativeAlg, CborValue? rowHeader, Uint8List? keyId}) {
    if (algorithm == null && rowHeader == null) {
      return null;
    }

    return CoseHeader(rawHeader: rowHeader, algorithm: algorithm, keyId: keyId);
  }

  @override
  CborValue toCBOR() {
    return rawHeader ?? CborNull();
  }
}

/// Struct which describes  a representation for cryptographic keys;
/// how to create and process signatures, message authentication codes, and
/// encryption using Concise Binary Object Representation (CBOR) or serialization.
class Cose implements CborEncodable {
  Cose({
    required this.type,
    required this.protectedHeader,
    this.unprotectedHeader,
    required this.payload,
    required this.signature,
  });

  factory Cose.fromSignature(CoseType type, int algorithm, Uint8List signature) {
    // return Cose(
    //   type: type,
    //   protectedHeader: CoseHeader(rawHeader: ),
    //   payload: CborNull(),
    //   signature: signature,
    // );
    throw UnimplementedError();
  }

  final CoseType type;
  final CoseHeader protectedHeader;
  final CoseHeader? unprotectedHeader;
  final CborValue payload;
  final Uint8List signature;

  CoseVerifyAlgorithm? get verifyAlgorithm {
    if (type != CoseType.sign1 || protectedHeader.algorithm == null) {
      return null;
    }

    return CoseVerifyAlgorithm.fromRaw(protectedHeader.algorithm!);
  }

  CoseMacAlgorithm? get macAlgorithm {
    if (type != CoseType.mac0 || protectedHeader.algorithm == null) {
      return null;
    }

    return CoseMacAlgorithm.fromRaw(protectedHeader.algorithm!);
  }

  static Cose? fromCBOR({required CoseType type, required CborValue cbor}) {
    return null;
  }

  @override
  CborValue toCBOR() {
    throw UnimplementedError();
  }
}
