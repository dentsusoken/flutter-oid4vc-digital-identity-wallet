import 'dart:async';
import 'dart:typed_data';

import 'package:tw_crypto/tw_crypto.dart';
import 'package:tw_iso18013_data_model/tw_iso18013_data_model.dart';
import 'package:uuid/uuid.dart';

import 'package:tw_wallet_storage/data_storage_service.dart';
import 'package:tw_wallet_storage/document.dart';
import 'package:tw_wallet_storage/enums.dart';
import 'package:tw_wallet_storage/private_key.dart';

class IssueRequest {
  IssueRequest._({
    required this.id,
    required this.docType,
    required this.privateKey,
  });

  static FutureOr<IssueRequest> create({
    String? id,
    String? docType,
    Uint8List? keyData,
    PrivateKeyType privateKeyType = PrivateKeyType.secureEnclaveP256,
  }) async {
    final pk = await PrivateKey.create(
      type: privateKeyType,
      value: keyData,
    );

    return IssueRequest._(
      id: id ?? const Uuid().v4(),
      docType: docType,
      privateKey: pk,
    );
  }

  static FutureOr<IssueRequest?> load({
    required DataStorageService storage,
    required String id,
  }) async {
    final doc = await storage.loadDocument(id);
    final pk = doc?.privateKey;
    if (doc == null || pk == null) {
      return null;
    }

    return IssueRequest._(
      id: id,
      docType: doc.docType,
      privateKey: pk,
    );
  }

  final String id;
  final String? docType;
  final PrivateKey privateKey;

  /// save key data to storage with id
  FutureOr<void> saveToStorage(DataStorageService storage) async {
    final docKey = Document.create(
      id: id,
      docType: docType,
      docDataType: DocDataType.cbor,
      data: Uint8List(0),
      privateKey: privateKey,
    );
    storage.saveDocument(docKey);
  }

  /// convert to COSE key private
  Future<CoseKeyPrivate> toCoseKeyPrivate() async {
    final privateKeyx963Data = await TwLibCrypto.getPrivateKeyX963(
      privateKey.type,
      privateKey.value,
    );
    return CoseKeyPrivate.fromData(
      privateKeyx963Data: privateKeyx963Data,
      crv: ECCurveType.p256,
    );
  }

  /// get public key
  Future<String> getPublicKeyPEM() {
    return TwLibCrypto.getPublicKeyPEM(
      privateKey.type,
      privateKey.value,
    );
  }
}
