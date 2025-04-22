import 'package:tw_iso18013_data_transfer/request_item.dart';

typedef UserRequestItems = Map<String, Map<String, List<RequestItem>>>;

class UserRequestInfo {
  UserRequestInfo({
    required this.validItemsRequested,
    this.errorItemsRequested,
    this.readerAuthValidated,
    this.readerCertificateIssuer,
    this.readerCertificateValidationMessage,
    this.readerLegalName,
  });

  final UserRequestItems validItemsRequested;
  final UserRequestItems? errorItemsRequested;
  final bool? readerAuthValidated;
  final String? readerCertificateIssuer;
  final String? readerCertificateValidationMessage;
  final String? readerLegalName;
}
