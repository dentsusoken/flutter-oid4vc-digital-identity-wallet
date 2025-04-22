// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'private_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PrivateKey {

 PrivateKeyType get type;@DataJsonConverter() Uint8List get value;
/// Create a copy of PrivateKey
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrivateKeyCopyWith<PrivateKey> get copyWith => _$PrivateKeyCopyWithImpl<PrivateKey>(this as PrivateKey, _$identity);

  /// Serializes this PrivateKey to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrivateKey&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.value, value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,const DeepCollectionEquality().hash(value));

@override
String toString() {
  return 'PrivateKey(type: $type, value: $value)';
}


}

/// @nodoc
abstract mixin class $PrivateKeyCopyWith<$Res>  {
  factory $PrivateKeyCopyWith(PrivateKey value, $Res Function(PrivateKey) _then) = _$PrivateKeyCopyWithImpl;
@useResult
$Res call({
 PrivateKeyType type,@DataJsonConverter() Uint8List value
});




}
/// @nodoc
class _$PrivateKeyCopyWithImpl<$Res>
    implements $PrivateKeyCopyWith<$Res> {
  _$PrivateKeyCopyWithImpl(this._self, this._then);

  final PrivateKey _self;
  final $Res Function(PrivateKey) _then;

/// Create a copy of PrivateKey
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? value = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as PrivateKeyType,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as Uint8List,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PrivateKey implements PrivateKey {
   _PrivateKey({required this.type, @DataJsonConverter() required this.value});
  factory _PrivateKey.fromJson(Map<String, dynamic> json) => _$PrivateKeyFromJson(json);

@override final  PrivateKeyType type;
@override@DataJsonConverter() final  Uint8List value;

/// Create a copy of PrivateKey
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PrivateKeyCopyWith<_PrivateKey> get copyWith => __$PrivateKeyCopyWithImpl<_PrivateKey>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PrivateKeyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PrivateKey&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.value, value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,const DeepCollectionEquality().hash(value));

@override
String toString() {
  return 'PrivateKey(type: $type, value: $value)';
}


}

/// @nodoc
abstract mixin class _$PrivateKeyCopyWith<$Res> implements $PrivateKeyCopyWith<$Res> {
  factory _$PrivateKeyCopyWith(_PrivateKey value, $Res Function(_PrivateKey) _then) = __$PrivateKeyCopyWithImpl;
@override @useResult
$Res call({
 PrivateKeyType type,@DataJsonConverter() Uint8List value
});




}
/// @nodoc
class __$PrivateKeyCopyWithImpl<$Res>
    implements _$PrivateKeyCopyWith<$Res> {
  __$PrivateKeyCopyWithImpl(this._self, this._then);

  final _PrivateKey _self;
  final $Res Function(_PrivateKey) _then;

/// Create a copy of PrivateKey
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? value = null,}) {
  return _then(_PrivateKey(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as PrivateKeyType,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as Uint8List,
  ));
}


}

// dart format on
