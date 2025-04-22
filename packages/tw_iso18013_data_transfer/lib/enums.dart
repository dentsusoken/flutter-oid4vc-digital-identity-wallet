/// Transfer status enumeration
enum TransferStatus {
  initializing,
  initialized,
  qrEngagementReady,
  connected,
  started,
  requestReceived,
  userSelected,
  responseSent,
  disconnected,
  error,
}

/// Possible error codes
enum TransferErrorCode {
  documentsNotProvided,
  invalidInputDocument,
  invalidUrl,
  devicePrivateKeyNotProvided,
  noDocumentToReturn,
  userRejected,
  requestDecodeError,
  bleNotAuthorized,
  bleNotSupported,
  unexpectedError,
  sessionEncryptionNotInitialized,
  deviceEngagementMissing,
  readerKeyMissing;

  String get description => switch (this) {
    TransferErrorCode.documentsNotProvided => 'DOCUMENTS_NOT_PROVIDED',
    TransferErrorCode.invalidInputDocument => 'INVALID_INPUT_DOCUMENT',
    TransferErrorCode.invalidUrl => 'INVALID_URL',
    TransferErrorCode.devicePrivateKeyNotProvided => 'DEVICE_PRIVATE_KEY_NOT_PROVIDED',
    TransferErrorCode.noDocumentToReturn => 'NO_DOCUMENT_TO_RETURN',
    TransferErrorCode.requestDecodeError => 'REQUEST_DECODE_ERROR',
    TransferErrorCode.userRejected => 'USER_REJECTED',
    TransferErrorCode.bleNotAuthorized => 'BLE_NOT_AUTHORIZED',
    TransferErrorCode.bleNotSupported => 'BLE_NOT_SUPPORTED',
    TransferErrorCode.deviceEngagementMissing => 'DEVICE_ENGAGEMENT_MISSING',
    TransferErrorCode.readerKeyMissing => 'READER_KEY_MISSING',
    TransferErrorCode.sessionEncryptionNotInitialized => 'SESSION_ENCRYPTION_NOT_INITIALIZED',
    _ => 'GENERIC_ERROR',
  };
}

/// String keys for the initialization dictionary
enum InitializeKeys {
  documentJsonData('document_json_data'),
  documentSignupIssuerSignedData('document_signup_issuer_signed_data'),
  documentSignupIssuerSignedObj('document_signup_issuer_signed_obj'),
  devicePrivateKeyData('device_private_key_data'),
  devicePrivateKeyObj('device_private_key_obj'),
  trustedCertificates('trusted_certificates'),
  deviceAuthMethod('device_auth_method');

  const InitializeKeys(this.key);

  final String key;
}

/// String keys for the user request dictionary
enum UserRequestKeys {
  validItemsRequested('valid_items_requested'),
  errorItemsRequested('error_items_requested'),
  readerCertificateIssuer('reader_certificate_issuer'),
  readerAuthValidated('reader_auth_validated'),
  readerCertificateValidationMessage('reader_certificate_validation_message'),
  readerLegalName('reader_legal_name');

  const UserRequestKeys(this.key);

  final String key;
}
