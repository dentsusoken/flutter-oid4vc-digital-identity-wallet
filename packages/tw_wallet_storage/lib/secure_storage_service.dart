import 'dart:async';
import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:tw_wallet_storage/data_storage_service.dart';
import 'package:tw_wallet_storage/document.dart';
import 'package:tw_wallet_storage/enums.dart';
import 'package:tw_wallet_storage/presentation_log.dart';
import 'package:tw_wallet_storage/private_key.dart';
import 'package:tw_wallet_storage/storage_exception.dart';

class SecureStorageService implements DataStorageService {
  SecureStorageService({required this.serviceName, this.accessGroup}) {
    _keyStorage = FlutterSecureStorage(
      iOptions: IOSOptions(groupId: accessGroup, accountName: '${serviceName}_key'),
      aOptions: AndroidOptions(
        encryptedSharedPreferences: true,
        sharedPreferencesName: '${serviceName}_key',
        preferencesKeyPrefix: accessGroup,
      ),
    );
    _docStorage = FlutterSecureStorage(
      iOptions: IOSOptions(groupId: accessGroup, accountName: '${serviceName}_doc'),
      aOptions: AndroidOptions(
        encryptedSharedPreferences: true,
        sharedPreferencesName: '${serviceName}_doc',
        preferencesKeyPrefix: accessGroup,
      ),
      webOptions: WebOptions(dbName: '${serviceName}_doc', publicKey: accessGroup ?? 'TWSecureStorage'),
    );
    _logStorage = FlutterSecureStorage(
      iOptions: IOSOptions(groupId: accessGroup, accountName: '${serviceName}_log'),
      aOptions: AndroidOptions(
        encryptedSharedPreferences: true,
        sharedPreferencesName: '${serviceName}_log',
        preferencesKeyPrefix: accessGroup,
      ),
      webOptions: WebOptions(dbName: '${serviceName}_log', publicKey: accessGroup ?? 'TWSecureStorage'),
    );
  }

  @override
  final String serviceName;

  @override
  final String? accessGroup;

  late final FlutterSecureStorage _keyStorage;
  late final FlutterSecureStorage _docStorage;
  late final FlutterSecureStorage _logStorage;

  @override
  FutureOr<Document?> loadDocument(String id) async {
    final doc = await _loadDocumentData(id, type: SavedSecureStorageDataType.doc);
    if (doc == null || doc.isEmpty) {
      return null;
    }

    final key = await _loadDocumentData(id, type: SavedSecureStorageDataType.key);
    if (key == null || key.isEmpty) {
      return null;
    }

    return _makeDocument(jsonKey: key, jsonDoc: doc);
  }

  @override
  FutureOr<List<Document>?> loadDocuments() async {
    final docs = await _loadDocumentsData(SavedSecureStorageDataType.doc);
    final keys = await _loadDocumentsData(SavedSecureStorageDataType.key);

    return docs.keys
        .where((id) => keys.containsKey(id) && docs.containsKey(id))
        .map((id) => _makeDocument(jsonKey: docs[id]!, jsonDoc: keys[id]!))
        .toList();
  }

  @override
  FutureOr<List<PresentationLog>?> loadPresentationLogs() async {
    final items = await _loadDocumentsData(SavedSecureStorageDataType.log);
    final logs = items.values.map((e) => PresentationLog.fromJson(jsonDecode(e) as Map<String, dynamic>)).toList();
    logs.sort((a, b) => a.submitAt.compareTo(b.submitAt));
    return logs;
  }

  @override
  FutureOr<void> saveDocument(Document document, {bool allowOverwrite = true}) {
    return _saveDocumentData(document, dataToSaveType: SavedSecureStorageDataType.doc, allowOverwrite: allowOverwrite);
  }

  @override
  FutureOr<void> savePresentationLog(PresentationLog log, {required SavedSecureStorageDataType dataToSaveType}) {
    final json = jsonEncode(log.toJson());
    _logStorage.write(key: log.id, value: json);
  }

  @override
  FutureOr<void> deleteDocument(String id) async {
    await _deleteDocumentData(id, dataToSaveType: SavedSecureStorageDataType.doc);
    await _deleteDocumentData(id, dataToSaveType: SavedSecureStorageDataType.key);
  }

  @override
  FutureOr<void> deletePresentationLog(String id) {
    return _deleteDocumentsData(SavedSecureStorageDataType.log);
  }

  @override
  FutureOr<void> deleteDocuments() async {
    await _deleteDocumentsData(SavedSecureStorageDataType.doc);
    await _deleteDocumentsData(SavedSecureStorageDataType.key);
  }
}

extension KeyChainStorageServiceExt on SecureStorageService {
  Document _makeDocument({required String jsonKey, required String jsonDoc}) {
    final key = PrivateKey.fromJson(jsonDecode(jsonKey) as Map<String, dynamic>);
    final doc = Document.fromJson(jsonDecode(jsonDoc) as Map<String, dynamic>);
    return doc.copyWith(privateKey: key);
  }

  FutureOr<String?> _loadDocumentData(String id, {required SavedSecureStorageDataType type}) {
    final storage = _storageForType(type);
    return storage.read(key: id);
  }

  FutureOr<Map<String, String>> _loadDocumentsData(SavedSecureStorageDataType type) {
    final storage = _storageForType(type);
    return storage.readAll();
  }

  FutureOr<void> _saveDocumentData(
    Document document, {
    required SavedSecureStorageDataType dataToSaveType,
    bool allowOverwrite = true,
  }) async {
    if (document.docType.length != 4) {
      throw StorageException('Invalid data type');
    }

    if (dataToSaveType == SavedSecureStorageDataType.key && !document.hasPrivateKey) {
      throw StorageException('Private key not available');
    }

    final storage = _storageForType(dataToSaveType);

    if (!allowOverwrite && await storage.containsKey(key: document.id)) {
      return;
    }

    final json = jsonEncode(document.toJson());
    await storage.write(key: document.id, value: json);
  }

  FutureOr<void> _deleteDocumentData(String id, {required SavedSecureStorageDataType dataToSaveType}) {
    final storage = _storageForType(dataToSaveType);
    return storage.delete(key: id);
  }

  FutureOr<void> _deleteDocumentsData(SavedSecureStorageDataType type) {
    final storage = _storageForType(type);
    return storage.deleteAll();
  }

  FlutterSecureStorage _storageForType(SavedSecureStorageDataType type) {
    return switch (type) {
      SavedSecureStorageDataType.doc => _docStorage,
      SavedSecureStorageDataType.key => _keyStorage,
      SavedSecureStorageDataType.log => _logStorage,
    };
  }
}
