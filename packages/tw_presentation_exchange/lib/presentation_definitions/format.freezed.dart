// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'format.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FormatContainer {

 List<Json> get formats;
/// Create a copy of FormatContainer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FormatContainerCopyWith<FormatContainer> get copyWith => _$FormatContainerCopyWithImpl<FormatContainer>(this as FormatContainer, _$identity);

  /// Serializes this FormatContainer to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormatContainer&&const DeepCollectionEquality().equals(other.formats, formats));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(formats));

@override
String toString() {
  return 'FormatContainer(formats: $formats)';
}


}

/// @nodoc
abstract mixin class $FormatContainerCopyWith<$Res>  {
  factory $FormatContainerCopyWith(FormatContainer value, $Res Function(FormatContainer) _then) = _$FormatContainerCopyWithImpl;
@useResult
$Res call({
 List<Json> formats
});




}
/// @nodoc
class _$FormatContainerCopyWithImpl<$Res>
    implements $FormatContainerCopyWith<$Res> {
  _$FormatContainerCopyWithImpl(this._self, this._then);

  final FormatContainer _self;
  final $Res Function(FormatContainer) _then;

/// Create a copy of FormatContainer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? formats = null,}) {
  return _then(_self.copyWith(
formats: null == formats ? _self.formats : formats // ignore: cast_nullable_to_non_nullable
as List<Json>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _FormatContainer implements FormatContainer {
   _FormatContainer({required final  List<Json> formats}): _formats = formats;
  factory _FormatContainer.fromJson(Map<String, dynamic> json) => _$FormatContainerFromJson(json);

 final  List<Json> _formats;
@override List<Json> get formats {
  if (_formats is EqualUnmodifiableListView) return _formats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_formats);
}


/// Create a copy of FormatContainer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FormatContainerCopyWith<_FormatContainer> get copyWith => __$FormatContainerCopyWithImpl<_FormatContainer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FormatContainerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FormatContainer&&const DeepCollectionEquality().equals(other._formats, _formats));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_formats));

@override
String toString() {
  return 'FormatContainer(formats: $formats)';
}


}

/// @nodoc
abstract mixin class _$FormatContainerCopyWith<$Res> implements $FormatContainerCopyWith<$Res> {
  factory _$FormatContainerCopyWith(_FormatContainer value, $Res Function(_FormatContainer) _then) = __$FormatContainerCopyWithImpl;
@override @useResult
$Res call({
 List<Json> formats
});




}
/// @nodoc
class __$FormatContainerCopyWithImpl<$Res>
    implements _$FormatContainerCopyWith<$Res> {
  __$FormatContainerCopyWithImpl(this._self, this._then);

  final _FormatContainer _self;
  final $Res Function(_FormatContainer) _then;

/// Create a copy of FormatContainer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? formats = null,}) {
  return _then(_FormatContainer(
formats: null == formats ? _self._formats : formats // ignore: cast_nullable_to_non_nullable
as List<Json>,
  ));
}


}

// dart format on
