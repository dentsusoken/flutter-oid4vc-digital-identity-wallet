// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'claim.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Claim {

 ClaimId get id; String get format; Json get jsonObject;
/// Create a copy of Claim
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClaimCopyWith<Claim> get copyWith => _$ClaimCopyWithImpl<Claim>(this as Claim, _$identity);

  /// Serializes this Claim to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Claim&&(identical(other.id, id) || other.id == id)&&(identical(other.format, format) || other.format == format)&&const DeepCollectionEquality().equals(other.jsonObject, jsonObject));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,format,const DeepCollectionEquality().hash(jsonObject));

@override
String toString() {
  return 'Claim(id: $id, format: $format, jsonObject: $jsonObject)';
}


}

/// @nodoc
abstract mixin class $ClaimCopyWith<$Res>  {
  factory $ClaimCopyWith(Claim value, $Res Function(Claim) _then) = _$ClaimCopyWithImpl;
@useResult
$Res call({
 ClaimId id, String format, Json jsonObject
});




}
/// @nodoc
class _$ClaimCopyWithImpl<$Res>
    implements $ClaimCopyWith<$Res> {
  _$ClaimCopyWithImpl(this._self, this._then);

  final Claim _self;
  final $Res Function(Claim) _then;

/// Create a copy of Claim
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? format = null,Object? jsonObject = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as ClaimId,format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String,jsonObject: null == jsonObject ? _self.jsonObject : jsonObject // ignore: cast_nullable_to_non_nullable
as Json,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Claim implements Claim {
   _Claim({required this.id, required this.format, required final  Json jsonObject}): _jsonObject = jsonObject;
  factory _Claim.fromJson(Map<String, dynamic> json) => _$ClaimFromJson(json);

@override final  ClaimId id;
@override final  String format;
 final  Json _jsonObject;
@override Json get jsonObject {
  if (_jsonObject is EqualUnmodifiableMapView) return _jsonObject;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_jsonObject);
}


/// Create a copy of Claim
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClaimCopyWith<_Claim> get copyWith => __$ClaimCopyWithImpl<_Claim>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClaimToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Claim&&(identical(other.id, id) || other.id == id)&&(identical(other.format, format) || other.format == format)&&const DeepCollectionEquality().equals(other._jsonObject, _jsonObject));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,format,const DeepCollectionEquality().hash(_jsonObject));

@override
String toString() {
  return 'Claim(id: $id, format: $format, jsonObject: $jsonObject)';
}


}

/// @nodoc
abstract mixin class _$ClaimCopyWith<$Res> implements $ClaimCopyWith<$Res> {
  factory _$ClaimCopyWith(_Claim value, $Res Function(_Claim) _then) = __$ClaimCopyWithImpl;
@override @useResult
$Res call({
 ClaimId id, String format, Json jsonObject
});




}
/// @nodoc
class __$ClaimCopyWithImpl<$Res>
    implements _$ClaimCopyWith<$Res> {
  __$ClaimCopyWithImpl(this._self, this._then);

  final _Claim _self;
  final $Res Function(_Claim) _then;

/// Create a copy of Claim
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? format = null,Object? jsonObject = null,}) {
  return _then(_Claim(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as ClaimId,format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String,jsonObject: null == jsonObject ? _self._jsonObject : jsonObject // ignore: cast_nullable_to_non_nullable
as Json,
  ));
}


}

// dart format on
