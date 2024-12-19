import 'dart:async';

import 'package:tw_wallet_storage/document.dart';
import 'package:tw_wallet_storage/enums.dart';
import 'package:tw_wallet_storage/presentation_log.dart';

abstract class DataStorageService {
  String get serviceName;
  String? get accessGroup;

  FutureOr<Document?> loadDocument(String id);
  FutureOr<List<Document>?> loadDocuments();
  FutureOr<List<PresentationLog>?> loadPresentationLogs();
  FutureOr<void> saveDocument(
    Document document, {
    bool allowOverwrite = true,
  });
  FutureOr<void> savePresentationLog(
    PresentationLog log, {
    required SavedSecureStorageDataType dataToSaveType,
  });
  FutureOr<void> deleteDocument(String id);
  FutureOr<void> deleteDocuments();
  FutureOr<void> deletePresentationLog(String id);
}
