import 'dart:async';
import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_iso18013_data_model/tw_iso18013_data_model.dart';
import 'package:tw_wallet_storage/document_cbor_data.dart';
import 'package:uuid/uuid.dart';

import 'package:tw_wallet_storage/data_json_converter.dart';
import 'package:tw_wallet_storage/enums.dart';
import 'package:tw_wallet_storage/issue_request.dart';
import 'package:tw_wallet_storage/private_key.dart';

part 'document.freezed.dart';
part 'document.g.dart';

@freezed
abstract class Document with _$Document {
  factory Document({
    required String id,
    required String docType,
    @DataJsonConverter() required Uint8List data,
    required DocDataType docDataType,
    // ignore: invalid_annotation_target
    @JsonKey(includeFromJson: false, includeToJson: false) PrivateKey? privateKey,
    required DateTime createdAt,
    DateTime? modifiedAt,
  }) = _Document;

  Document._();

  factory Document.fromJson(Map<String, dynamic> json) => _$DocumentFromJson(json);

  factory Document.create({
    String? id,
    String? docType,
    required Uint8List data,
    required DocDataType docDataType,
    PrivateKey? privateKey,
    DateTime? createdAt,
    DateTime? modifiedAt,
  }) {
    return Document(
      id: id ?? const Uuid().v4(),
      docType: docType ?? defaultDocType,
      data: data,
      docDataType: docDataType,
      privateKey: privateKey,
      createdAt: createdAt ?? DateTime.now(),
      modifiedAt: modifiedAt,
    );
  }

  bool get hasPrivateKey => privateKey != null;

  static const defaultDocType = 'P256';

  Future<DocumentCborData?> getCborData() async {
    switch (docDataType) {
      case DocDataType.signupResponseJson:
        final sr = SignUpResponse.fromJson(data);

        final dpk = sr?.devicePrivateKey;
        if (dpk == null) {
          return null;
        }

        final iss = sr?.deviceResponse?.documents?.firstOrNull?.issuerSigned;
        if (iss == null) {
          return null;
        }

        final randomId = const Uuid().v4();

        return DocumentCborData(id: randomId, iss: iss, dpk: dpk);
      case DocDataType.cbor:
        final pk = privateKey;
        if (pk == null) {
          return null;
        }

        final iss = IssuerSigned.fromData(data);
        if (iss == null) {
          return null;
        }

        final req = await IssueRequest.create(id: id, privateKeyType: pk.type, keyData: pk.value);
        final dpk = await req.toCoseKeyPrivate();

        return DocumentCborData(id: id, iss: iss, dpk: dpk);
      case DocDataType.sjtw:
        throw UnimplementedError('format $docDataType not implemented');
    }
  }
}
