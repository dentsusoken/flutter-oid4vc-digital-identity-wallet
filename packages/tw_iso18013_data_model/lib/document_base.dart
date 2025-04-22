abstract interface class DocumentBase {
  String get id;
  String get docType;
  DateTime get createdAt;
  DateTime? get modifiedAt;
  String? get displayName;
  String? get statusDescription;
}
