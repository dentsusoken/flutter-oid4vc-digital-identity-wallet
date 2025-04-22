// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credential_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CredentialResponse {

 String get credential; String get cNonce; int get cNonceExpiresIn;
/// Create a copy of CredentialResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CredentialResponseCopyWith<CredentialResponse> get copyWith => _$CredentialResponseCopyWithImpl<CredentialResponse>(this as CredentialResponse, _$identity);

  /// Serializes this CredentialResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CredentialResponse&&(identical(other.credential, credential) || other.credential == credential)&&(identical(other.cNonce, cNonce) || other.cNonce == cNonce)&&(identical(other.cNonceExpiresIn, cNonceExpiresIn) || other.cNonceExpiresIn == cNonceExpiresIn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,credential,cNonce,cNonceExpiresIn);

@override
String toString() {
  return 'CredentialResponse(credential: $credential, cNonce: $cNonce, cNonceExpiresIn: $cNonceExpiresIn)';
}


}

/// @nodoc
abstract mixin class $CredentialResponseCopyWith<$Res>  {
  factory $CredentialResponseCopyWith(CredentialResponse value, $Res Function(CredentialResponse) _then) = _$CredentialResponseCopyWithImpl;
@useResult
$Res call({
 String credential, String cNonce, int cNonceExpiresIn
});




}
/// @nodoc
class _$CredentialResponseCopyWithImpl<$Res>
    implements $CredentialResponseCopyWith<$Res> {
  _$CredentialResponseCopyWithImpl(this._self, this._then);

  final CredentialResponse _self;
  final $Res Function(CredentialResponse) _then;

/// Create a copy of CredentialResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? credential = null,Object? cNonce = null,Object? cNonceExpiresIn = null,}) {
  return _then(_self.copyWith(
credential: null == credential ? _self.credential : credential // ignore: cast_nullable_to_non_nullable
as String,cNonce: null == cNonce ? _self.cNonce : cNonce // ignore: cast_nullable_to_non_nullable
as String,cNonceExpiresIn: null == cNonceExpiresIn ? _self.cNonceExpiresIn : cNonceExpiresIn // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _CredentialResponse implements CredentialResponse {
   _CredentialResponse({required this.credential, required this.cNonce, required this.cNonceExpiresIn});
  factory _CredentialResponse.fromJson(Map<String, dynamic> json) => _$CredentialResponseFromJson(json);

@override final  String credential;
@override final  String cNonce;
@override final  int cNonceExpiresIn;

/// Create a copy of CredentialResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CredentialResponseCopyWith<_CredentialResponse> get copyWith => __$CredentialResponseCopyWithImpl<_CredentialResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CredentialResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CredentialResponse&&(identical(other.credential, credential) || other.credential == credential)&&(identical(other.cNonce, cNonce) || other.cNonce == cNonce)&&(identical(other.cNonceExpiresIn, cNonceExpiresIn) || other.cNonceExpiresIn == cNonceExpiresIn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,credential,cNonce,cNonceExpiresIn);

@override
String toString() {
  return 'CredentialResponse(credential: $credential, cNonce: $cNonce, cNonceExpiresIn: $cNonceExpiresIn)';
}


}

/// @nodoc
abstract mixin class _$CredentialResponseCopyWith<$Res> implements $CredentialResponseCopyWith<$Res> {
  factory _$CredentialResponseCopyWith(_CredentialResponse value, $Res Function(_CredentialResponse) _then) = __$CredentialResponseCopyWithImpl;
@override @useResult
$Res call({
 String credential, String cNonce, int cNonceExpiresIn
});




}
/// @nodoc
class __$CredentialResponseCopyWithImpl<$Res>
    implements _$CredentialResponseCopyWith<$Res> {
  __$CredentialResponseCopyWithImpl(this._self, this._then);

  final _CredentialResponse _self;
  final $Res Function(_CredentialResponse) _then;

/// Create a copy of CredentialResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? credential = null,Object? cNonce = null,Object? cNonceExpiresIn = null,}) {
  return _then(_CredentialResponse(
credential: null == credential ? _self.credential : credential // ignore: cast_nullable_to_non_nullable
as String,cNonce: null == cNonce ? _self.cNonce : cNonce // ignore: cast_nullable_to_non_nullable
as String,cNonceExpiresIn: null == cNonceExpiresIn ? _self.cNonceExpiresIn : cNonceExpiresIn // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
