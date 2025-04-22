// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Document {

 String get id; String get docType;@DataJsonConverter() Uint8List get data; DocDataType get docDataType;// ignore: invalid_annotation_target
@JsonKey(includeFromJson: false, includeToJson: false) PrivateKey? get privateKey; DateTime get createdAt; DateTime? get modifiedAt;
/// Create a copy of Document
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocumentCopyWith<Document> get copyWith => _$DocumentCopyWithImpl<Document>(this as Document, _$identity);

  /// Serializes this Document to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Document&&(identical(other.id, id) || other.id == id)&&(identical(other.docType, docType) || other.docType == docType)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.docDataType, docDataType) || other.docDataType == docDataType)&&(identical(other.privateKey, privateKey) || other.privateKey == privateKey)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.modifiedAt, modifiedAt) || other.modifiedAt == modifiedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,docType,const DeepCollectionEquality().hash(data),docDataType,privateKey,createdAt,modifiedAt);

@override
String toString() {
  return 'Document(id: $id, docType: $docType, data: $data, docDataType: $docDataType, privateKey: $privateKey, createdAt: $createdAt, modifiedAt: $modifiedAt)';
}


}

/// @nodoc
abstract mixin class $DocumentCopyWith<$Res>  {
  factory $DocumentCopyWith(Document value, $Res Function(Document) _then) = _$DocumentCopyWithImpl;
@useResult
$Res call({
 String id, String docType,@DataJsonConverter() Uint8List data, DocDataType docDataType,@JsonKey(includeFromJson: false, includeToJson: false) PrivateKey? privateKey, DateTime createdAt, DateTime? modifiedAt
});


$PrivateKeyCopyWith<$Res>? get privateKey;

}
/// @nodoc
class _$DocumentCopyWithImpl<$Res>
    implements $DocumentCopyWith<$Res> {
  _$DocumentCopyWithImpl(this._self, this._then);

  final Document _self;
  final $Res Function(Document) _then;

/// Create a copy of Document
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? docType = null,Object? data = null,Object? docDataType = null,Object? privateKey = freezed,Object? createdAt = null,Object? modifiedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,docType: null == docType ? _self.docType : docType // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Uint8List,docDataType: null == docDataType ? _self.docDataType : docDataType // ignore: cast_nullable_to_non_nullable
as DocDataType,privateKey: freezed == privateKey ? _self.privateKey : privateKey // ignore: cast_nullable_to_non_nullable
as PrivateKey?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,modifiedAt: freezed == modifiedAt ? _self.modifiedAt : modifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of Document
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PrivateKeyCopyWith<$Res>? get privateKey {
    if (_self.privateKey == null) {
    return null;
  }

  return $PrivateKeyCopyWith<$Res>(_self.privateKey!, (value) {
    return _then(_self.copyWith(privateKey: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _Document extends Document {
   _Document({required this.id, required this.docType, @DataJsonConverter() required this.data, required this.docDataType, @JsonKey(includeFromJson: false, includeToJson: false) this.privateKey, required this.createdAt, this.modifiedAt}): super._();
  factory _Document.fromJson(Map<String, dynamic> json) => _$DocumentFromJson(json);

@override final  String id;
@override final  String docType;
@override@DataJsonConverter() final  Uint8List data;
@override final  DocDataType docDataType;
// ignore: invalid_annotation_target
@override@JsonKey(includeFromJson: false, includeToJson: false) final  PrivateKey? privateKey;
@override final  DateTime createdAt;
@override final  DateTime? modifiedAt;

/// Create a copy of Document
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocumentCopyWith<_Document> get copyWith => __$DocumentCopyWithImpl<_Document>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DocumentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Document&&(identical(other.id, id) || other.id == id)&&(identical(other.docType, docType) || other.docType == docType)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.docDataType, docDataType) || other.docDataType == docDataType)&&(identical(other.privateKey, privateKey) || other.privateKey == privateKey)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.modifiedAt, modifiedAt) || other.modifiedAt == modifiedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,docType,const DeepCollectionEquality().hash(data),docDataType,privateKey,createdAt,modifiedAt);

@override
String toString() {
  return 'Document(id: $id, docType: $docType, data: $data, docDataType: $docDataType, privateKey: $privateKey, createdAt: $createdAt, modifiedAt: $modifiedAt)';
}


}

/// @nodoc
abstract mixin class _$DocumentCopyWith<$Res> implements $DocumentCopyWith<$Res> {
  factory _$DocumentCopyWith(_Document value, $Res Function(_Document) _then) = __$DocumentCopyWithImpl;
@override @useResult
$Res call({
 String id, String docType,@DataJsonConverter() Uint8List data, DocDataType docDataType,@JsonKey(includeFromJson: false, includeToJson: false) PrivateKey? privateKey, DateTime createdAt, DateTime? modifiedAt
});


@override $PrivateKeyCopyWith<$Res>? get privateKey;

}
/// @nodoc
class __$DocumentCopyWithImpl<$Res>
    implements _$DocumentCopyWith<$Res> {
  __$DocumentCopyWithImpl(this._self, this._then);

  final _Document _self;
  final $Res Function(_Document) _then;

/// Create a copy of Document
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? docType = null,Object? data = null,Object? docDataType = null,Object? privateKey = freezed,Object? createdAt = null,Object? modifiedAt = freezed,}) {
  return _then(_Document(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,docType: null == docType ? _self.docType : docType // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Uint8List,docDataType: null == docDataType ? _self.docDataType : docDataType // ignore: cast_nullable_to_non_nullable
as DocDataType,privateKey: freezed == privateKey ? _self.privateKey : privateKey // ignore: cast_nullable_to_non_nullable
as PrivateKey?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,modifiedAt: freezed == modifiedAt ? _self.modifiedAt : modifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of Document
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PrivateKeyCopyWith<$Res>? get privateKey {
    if (_self.privateKey == null) {
    return null;
  }

  return $PrivateKeyCopyWith<$Res>(_self.privateKey!, (value) {
    return _then(_self.copyWith(privateKey: value));
  });
}
}

// dart format on
