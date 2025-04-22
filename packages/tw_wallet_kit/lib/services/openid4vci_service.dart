import 'dart:typed_data';

import 'package:tw_openid4vci/tw_openid4vci.dart';
import 'package:tw_wallet_kit/models/offered_doc_model.dart';
import 'package:tw_wallet_kit/services/wallet_data_format.dart';

class OpenId4VCIService {
  /// Issue a document with the given `docType` using OpenId4Vci protocol
  /// - Parameters:
  ///   - docType: the docType of the document to be issued
  ///   - format: format of the exchanged data
  ///   - useSecureEnclave: use secure enclave to protect the private key
  /// - Returns: The data of the document
  Uint8List issueDocument({required String docType, required WalletDataFormat format, bool useSecureEnclave = true}) {
    throw UnimplementedError();
  }

  /// Resolve issue offer and return available document metadata
  /// - Parameters:
  ///   - uriOffer: Uri of the offer (from a QR or a deep link)
  ///   - format: format of the exchanged data
  /// - Returns: The data of the document
  List<OfferedDocModel> resolveOfferDocTypes({
    required String uriOffer,
    WalletDataFormat format = WalletDataFormat.cbor,
  }) {
    throw UnimplementedError();
  }

  List<Uint8List> issueDocumentsByOfferUrl({
    required String offerUri,
    required List<OfferedDocModel> docTYpes,
    WalletDataFormat format = WalletDataFormat.cbor,
    bool useSecureEnclave = true,
    // ClaimSet? claimSet,
  }) {
    throw UnimplementedError();
  }

  String issueByDocType({
    required String docType,
    WalletDataFormat format = WalletDataFormat.cbor,
    // ClaimSet? claimSet,
  }) {
    throw UnimplementedError();
  }
}
