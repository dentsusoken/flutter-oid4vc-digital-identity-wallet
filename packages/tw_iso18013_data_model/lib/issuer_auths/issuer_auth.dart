import 'dart:typed_data';

import 'package:cbor/cbor.dart';
import 'package:tw_iso18013_data_model/cbor_encodable.dart';
import 'package:tw_iso18013_data_model/cose.dart';
import 'package:tw_iso18013_data_model/extensions/extensions.dart';
import 'package:tw_iso18013_data_model/issuer_auths/mobile_security_object.dart';
import 'package:tw_iso18013_data_model/logger.dart';

/// Contains the mobile security object (MSO) for issuer data authentication
///
/// Encoded as `Cose` ( COSE Sign1). The payload is the MSO
class IssuerAuth extends CborEncodable {
  IssuerAuth({
    required this.mso,
    required this.msoRawData,
    required this.verifyAlgorithm,
    required this.signature,
    required this.iaca,
  });

  final MobileSecurityObject mso;
  final Uint8List msoRawData;
  final CoseVerifyAlgorithm verifyAlgorithm;
  final Uint8List signature;
  final List<Uint8List> iaca;

  @override
  CborValue toCBOR() {
    // final unprotectedHeaderCbor = CborValue({
    //   33: iaca.length == 1 ? CborBytes(iaca.first) : CborList(iaca.map((e) => CborBytes(e)).toList()),
    // });
    // final cose = Cose(
    //   type: CoseType.sign1,
    //   protectedHeader: CoseHeader(),
    //   unprotectedHeader: unprotectedHeaderCbor,
    //   payload: CborValue(),
    //   signature: signature,
    // );
    // return cose.toCBOR();
    throw UnimplementedError();
  }

  static IssuerAuth? fromCBOR(CborValue? cbor) {
    if (cbor == null) {
      return null;
    }

    final cose = Cose.fromCBOR(type: CoseType.sign1, cbor: cbor);
    if (cose == null) {
      logger.error("IssuerAuth cbor error");
      return null;
    }

    final payloadBytes = cose.payload.decodeTaggedBytes();
    if (payloadBytes == null) {
      return null;
    }

    final mso = MobileSecurityObject.fromData(payloadBytes);
    if (mso == null) {
      return null;
    }

    final verifyAlgorithm = cose.verifyAlgorithm;
    if (verifyAlgorithm == null) {
      return null;
    }

    final unprotectedHeader = cose.unprotectedHeader?.rawHeader;
    if (unprotectedHeader is! CborMap) {
      return null;
    }

    List<Uint8List> iaca;
    final iacaValue = unprotectedHeader[CborSmallInt(33)];
    if (iacaValue is CborBytes) {
      iaca = [Uint8List.fromList(iacaValue.bytes)];
    } else if (iacaValue is CborList) {
      iaca =
          iacaValue
              .where((element) => element is CborBytes)
              .map((e) => Uint8List.fromList((e as CborBytes).bytes))
              .toList();
      if (iaca.isEmpty) {
        return null;
      }
    } else {
      return null;
    }

    return IssuerAuth(
      mso: mso,
      msoRawData: payloadBytes,
      verifyAlgorithm: verifyAlgorithm,
      signature: cose.signature,
      iaca: iaca,
    );
  }
}
