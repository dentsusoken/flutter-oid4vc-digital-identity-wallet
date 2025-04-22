// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vp_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VpTokenContainer {

 VpToken get vpToken;
/// Create a copy of VpTokenContainer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VpTokenContainerCopyWith<VpTokenContainer> get copyWith => _$VpTokenContainerCopyWithImpl<VpTokenContainer>(this as VpTokenContainer, _$identity);

  /// Serializes this VpTokenContainer to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VpTokenContainer&&(identical(other.vpToken, vpToken) || other.vpToken == vpToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,vpToken);

@override
String toString() {
  return 'VpTokenContainer(vpToken: $vpToken)';
}


}

/// @nodoc
abstract mixin class $VpTokenContainerCopyWith<$Res>  {
  factory $VpTokenContainerCopyWith(VpTokenContainer value, $Res Function(VpTokenContainer) _then) = _$VpTokenContainerCopyWithImpl;
@useResult
$Res call({
 VpToken vpToken
});


$VpTokenCopyWith<$Res> get vpToken;

}
/// @nodoc
class _$VpTokenContainerCopyWithImpl<$Res>
    implements $VpTokenContainerCopyWith<$Res> {
  _$VpTokenContainerCopyWithImpl(this._self, this._then);

  final VpTokenContainer _self;
  final $Res Function(VpTokenContainer) _then;

/// Create a copy of VpTokenContainer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? vpToken = null,}) {
  return _then(_self.copyWith(
vpToken: null == vpToken ? _self.vpToken : vpToken // ignore: cast_nullable_to_non_nullable
as VpToken,
  ));
}
/// Create a copy of VpTokenContainer
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VpTokenCopyWith<$Res> get vpToken {
  
  return $VpTokenCopyWith<$Res>(_self.vpToken, (value) {
    return _then(_self.copyWith(vpToken: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _VpTokenContainer implements VpTokenContainer {
   _VpTokenContainer({required this.vpToken});
  factory _VpTokenContainer.fromJson(Map<String, dynamic> json) => _$VpTokenContainerFromJson(json);

@override final  VpToken vpToken;

/// Create a copy of VpTokenContainer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VpTokenContainerCopyWith<_VpTokenContainer> get copyWith => __$VpTokenContainerCopyWithImpl<_VpTokenContainer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VpTokenContainerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VpTokenContainer&&(identical(other.vpToken, vpToken) || other.vpToken == vpToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,vpToken);

@override
String toString() {
  return 'VpTokenContainer(vpToken: $vpToken)';
}


}

/// @nodoc
abstract mixin class _$VpTokenContainerCopyWith<$Res> implements $VpTokenContainerCopyWith<$Res> {
  factory _$VpTokenContainerCopyWith(_VpTokenContainer value, $Res Function(_VpTokenContainer) _then) = __$VpTokenContainerCopyWithImpl;
@override @useResult
$Res call({
 VpToken vpToken
});


@override $VpTokenCopyWith<$Res> get vpToken;

}
/// @nodoc
class __$VpTokenContainerCopyWithImpl<$Res>
    implements _$VpTokenContainerCopyWith<$Res> {
  __$VpTokenContainerCopyWithImpl(this._self, this._then);

  final _VpTokenContainer _self;
  final $Res Function(_VpTokenContainer) _then;

/// Create a copy of VpTokenContainer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? vpToken = null,}) {
  return _then(_VpTokenContainer(
vpToken: null == vpToken ? _self.vpToken : vpToken // ignore: cast_nullable_to_non_nullable
as VpToken,
  ));
}

/// Create a copy of VpTokenContainer
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VpTokenCopyWith<$Res> get vpToken {
  
  return $VpTokenCopyWith<$Res>(_self.vpToken, (value) {
    return _then(_self.copyWith(vpToken: value));
  });
}
}


/// @nodoc
mixin _$VpToken {

 PresentationDefinition get presentationDefinition;
/// Create a copy of VpToken
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VpTokenCopyWith<VpToken> get copyWith => _$VpTokenCopyWithImpl<VpToken>(this as VpToken, _$identity);

  /// Serializes this VpToken to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VpToken&&(identical(other.presentationDefinition, presentationDefinition) || other.presentationDefinition == presentationDefinition));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,presentationDefinition);

@override
String toString() {
  return 'VpToken(presentationDefinition: $presentationDefinition)';
}


}

/// @nodoc
abstract mixin class $VpTokenCopyWith<$Res>  {
  factory $VpTokenCopyWith(VpToken value, $Res Function(VpToken) _then) = _$VpTokenCopyWithImpl;
@useResult
$Res call({
 PresentationDefinition presentationDefinition
});


$PresentationDefinitionCopyWith<$Res> get presentationDefinition;

}
/// @nodoc
class _$VpTokenCopyWithImpl<$Res>
    implements $VpTokenCopyWith<$Res> {
  _$VpTokenCopyWithImpl(this._self, this._then);

  final VpToken _self;
  final $Res Function(VpToken) _then;

/// Create a copy of VpToken
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? presentationDefinition = null,}) {
  return _then(_self.copyWith(
presentationDefinition: null == presentationDefinition ? _self.presentationDefinition : presentationDefinition // ignore: cast_nullable_to_non_nullable
as PresentationDefinition,
  ));
}
/// Create a copy of VpToken
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PresentationDefinitionCopyWith<$Res> get presentationDefinition {
  
  return $PresentationDefinitionCopyWith<$Res>(_self.presentationDefinition, (value) {
    return _then(_self.copyWith(presentationDefinition: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _VpToken implements VpToken {
   _VpToken({required this.presentationDefinition});
  factory _VpToken.fromJson(Map<String, dynamic> json) => _$VpTokenFromJson(json);

@override final  PresentationDefinition presentationDefinition;

/// Create a copy of VpToken
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VpTokenCopyWith<_VpToken> get copyWith => __$VpTokenCopyWithImpl<_VpToken>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VpTokenToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VpToken&&(identical(other.presentationDefinition, presentationDefinition) || other.presentationDefinition == presentationDefinition));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,presentationDefinition);

@override
String toString() {
  return 'VpToken(presentationDefinition: $presentationDefinition)';
}


}

/// @nodoc
abstract mixin class _$VpTokenCopyWith<$Res> implements $VpTokenCopyWith<$Res> {
  factory _$VpTokenCopyWith(_VpToken value, $Res Function(_VpToken) _then) = __$VpTokenCopyWithImpl;
@override @useResult
$Res call({
 PresentationDefinition presentationDefinition
});


@override $PresentationDefinitionCopyWith<$Res> get presentationDefinition;

}
/// @nodoc
class __$VpTokenCopyWithImpl<$Res>
    implements _$VpTokenCopyWith<$Res> {
  __$VpTokenCopyWithImpl(this._self, this._then);

  final _VpToken _self;
  final $Res Function(_VpToken) _then;

/// Create a copy of VpToken
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? presentationDefinition = null,}) {
  return _then(_VpToken(
presentationDefinition: null == presentationDefinition ? _self.presentationDefinition : presentationDefinition // ignore: cast_nullable_to_non_nullable
as PresentationDefinition,
  ));
}

/// Create a copy of VpToken
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PresentationDefinitionCopyWith<$Res> get presentationDefinition {
  
  return $PresentationDefinitionCopyWith<$Res>(_self.presentationDefinition, (value) {
    return _then(_self.copyWith(presentationDefinition: value));
  });
}
}

// dart format on
