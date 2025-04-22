import 'dart:async';

import 'package:tw_wallet_storage/tw_wallet_storage.dart';

class StorageManager {
  StorageManager({required this.storageService});

  final DataStorageService storageService;

  void refreshPublishedVars() {
    throw UnimplementedError();
  }

  FutureOr<void> deleteDocuments() {
    return storageService.deleteDocuments();
  }

  void _refreshDocuments(List<Document> documents) {
    throw UnimplementedError();
  }

  void _refreshPresentationLogModels(List<PresentationLog> logs) {
    throw UnimplementedError();
  }
}
