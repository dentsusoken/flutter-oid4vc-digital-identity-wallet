// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'par_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ParResponse {

 int get expiresIn; String get requestUri;
/// Create a copy of ParResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParResponseCopyWith<ParResponse> get copyWith => _$ParResponseCopyWithImpl<ParResponse>(this as ParResponse, _$identity);

  /// Serializes this ParResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParResponse&&(identical(other.expiresIn, expiresIn) || other.expiresIn == expiresIn)&&(identical(other.requestUri, requestUri) || other.requestUri == requestUri));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,expiresIn,requestUri);

@override
String toString() {
  return 'ParResponse(expiresIn: $expiresIn, requestUri: $requestUri)';
}


}

/// @nodoc
abstract mixin class $ParResponseCopyWith<$Res>  {
  factory $ParResponseCopyWith(ParResponse value, $Res Function(ParResponse) _then) = _$ParResponseCopyWithImpl;
@useResult
$Res call({
 int expiresIn, String requestUri
});




}
/// @nodoc
class _$ParResponseCopyWithImpl<$Res>
    implements $ParResponseCopyWith<$Res> {
  _$ParResponseCopyWithImpl(this._self, this._then);

  final ParResponse _self;
  final $Res Function(ParResponse) _then;

/// Create a copy of ParResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? expiresIn = null,Object? requestUri = null,}) {
  return _then(_self.copyWith(
expiresIn: null == expiresIn ? _self.expiresIn : expiresIn // ignore: cast_nullable_to_non_nullable
as int,requestUri: null == requestUri ? _self.requestUri : requestUri // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _ParResponse implements ParResponse {
   _ParResponse({required this.expiresIn, required this.requestUri});
  factory _ParResponse.fromJson(Map<String, dynamic> json) => _$ParResponseFromJson(json);

@override final  int expiresIn;
@override final  String requestUri;

/// Create a copy of ParResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParResponseCopyWith<_ParResponse> get copyWith => __$ParResponseCopyWithImpl<_ParResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParResponse&&(identical(other.expiresIn, expiresIn) || other.expiresIn == expiresIn)&&(identical(other.requestUri, requestUri) || other.requestUri == requestUri));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,expiresIn,requestUri);

@override
String toString() {
  return 'ParResponse(expiresIn: $expiresIn, requestUri: $requestUri)';
}


}

/// @nodoc
abstract mixin class _$ParResponseCopyWith<$Res> implements $ParResponseCopyWith<$Res> {
  factory _$ParResponseCopyWith(_ParResponse value, $Res Function(_ParResponse) _then) = __$ParResponseCopyWithImpl;
@override @useResult
$Res call({
 int expiresIn, String requestUri
});




}
/// @nodoc
class __$ParResponseCopyWithImpl<$Res>
    implements _$ParResponseCopyWith<$Res> {
  __$ParResponseCopyWithImpl(this._self, this._then);

  final _ParResponse _self;
  final $Res Function(_ParResponse) _then;

/// Create a copy of ParResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? expiresIn = null,Object? requestUri = null,}) {
  return _then(_ParResponse(
expiresIn: null == expiresIn ? _self.expiresIn : expiresIn // ignore: cast_nullable_to_non_nullable
as int,requestUri: null == requestUri ? _self.requestUri : requestUri // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
