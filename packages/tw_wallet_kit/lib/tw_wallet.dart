import 'dart:async';
import 'dart:typed_data';

import 'package:tw_crypto/tw_crypto.dart';
import 'package:tw_wallet_kit/services/services.dart';
import 'package:tw_wallet_storage/tw_wallet_storage.dart';

const String _defaultOpenID4VciRedirectUri = 'eudi-openid4ci://authorize';

final class TwWallet {
  TwWallet({
    this.serviceName = 'eudiw',
    this.accessGroup,
    this.trustedReaderCertificates,
    this.userAuthenticationRequired = false,
    this.verifierApiUri,
    this.openID4VciIssuerUrl,
    this.openID4VciClientId,
    this.openID4VciRedirectUri = _defaultOpenID4VciRedirectUri,
  }) {
    final service = SecureStorageService(serviceName: serviceName, accessGroup: accessGroup);
    storage = StorageManager(storageService: service);
  }

  late final StorageManager storage;
  final String serviceName;
  final String? accessGroup;
  final Uint8List? trustedReaderCertificates;
  final bool userAuthenticationRequired;
  final String? verifierApiUri;
  final String? openID4VciIssuerUrl;
  final String? openID4VciClientId;
  final String openID4VciRedirectUri;

  /// Prepare issuing a document.
  ///
  /// - Parameters:
  ///   - docType: document type
  ///   - promptMessage: Prompt message for biometric authentication (Optional)
  ///
  /// - Returns: (Issue request key pair, vci service, unique id)
  FutureOr<(IssueRequest, OpenId4VCIService, String)> prepareIssuing({String? docType, String? promptMessage}) {
    throw UnimplementedError();
  }

  /// Issue a document with the given docType using OpenId4Vci protocol
  ///
  /// If ``userAuthenticationRequired`` is true, user authentication is required. The authentication prompt message has localisation key "issue_document"
  ///  - Parameters:
  ///   - docType: Document type
  ///   - format: Optional format type. Defaults to cbor
  ///   - promptMessage: Prompt message for biometric authentication (optional)
  /// - Returns: The document issued. It is saved in storage.
  FutureOr<Document> issueDocument({
    required String docType,
    WalletDataFormat format = WalletDataFormat.cbor,
    String? promptMessage,
  }) {
    throw UnimplementedError();
  }

  FutureOr<IssueRequest> beginIssueDocument({
    required String id,
    PrivateKeyType privateKeyType = PrivateKeyType.secureEnclaveP256,
    bool saveToStorage = true,
  }) {
    throw UnimplementedError();
  }

  FutureOr<void> continueIssueDocument({required Document document}) {
    throw UnimplementedError();
  }

  FutureOr<List<Document>> loadDocuments() {
    throw UnimplementedError();
  }

  FutureOr<List<PresentationLog>> loadPresentationLogs() {
    throw UnimplementedError();
  }

  FutureOr<void> deleteDocument() {
    return storage.deleteDocuments();
  }
}
