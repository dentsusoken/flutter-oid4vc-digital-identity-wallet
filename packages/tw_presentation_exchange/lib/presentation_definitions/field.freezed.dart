// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Field {

@JsonKey(name: 'path') List<String> get paths; Json? get filter; String? get purpose;@JsonKey(name: 'intent_to_retain') bool? get intentToRetain; bool? get optional;
/// Create a copy of Field
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FieldCopyWith<Field> get copyWith => _$FieldCopyWithImpl<Field>(this as Field, _$identity);

  /// Serializes this Field to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Field&&const DeepCollectionEquality().equals(other.paths, paths)&&const DeepCollectionEquality().equals(other.filter, filter)&&(identical(other.purpose, purpose) || other.purpose == purpose)&&(identical(other.intentToRetain, intentToRetain) || other.intentToRetain == intentToRetain)&&(identical(other.optional, optional) || other.optional == optional));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(paths),const DeepCollectionEquality().hash(filter),purpose,intentToRetain,optional);

@override
String toString() {
  return 'Field(paths: $paths, filter: $filter, purpose: $purpose, intentToRetain: $intentToRetain, optional: $optional)';
}


}

/// @nodoc
abstract mixin class $FieldCopyWith<$Res>  {
  factory $FieldCopyWith(Field value, $Res Function(Field) _then) = _$FieldCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'path') List<String> paths, Json? filter, String? purpose,@JsonKey(name: 'intent_to_retain') bool? intentToRetain, bool? optional
});




}
/// @nodoc
class _$FieldCopyWithImpl<$Res>
    implements $FieldCopyWith<$Res> {
  _$FieldCopyWithImpl(this._self, this._then);

  final Field _self;
  final $Res Function(Field) _then;

/// Create a copy of Field
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paths = null,Object? filter = freezed,Object? purpose = freezed,Object? intentToRetain = freezed,Object? optional = freezed,}) {
  return _then(_self.copyWith(
paths: null == paths ? _self.paths : paths // ignore: cast_nullable_to_non_nullable
as List<String>,filter: freezed == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as Json?,purpose: freezed == purpose ? _self.purpose : purpose // ignore: cast_nullable_to_non_nullable
as String?,intentToRetain: freezed == intentToRetain ? _self.intentToRetain : intentToRetain // ignore: cast_nullable_to_non_nullable
as bool?,optional: freezed == optional ? _self.optional : optional // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Field implements Field {
   _Field({@JsonKey(name: 'path') required final  List<String> paths, final  Json? filter, this.purpose, @JsonKey(name: 'intent_to_retain') this.intentToRetain, this.optional}): _paths = paths,_filter = filter;
  factory _Field.fromJson(Map<String, dynamic> json) => _$FieldFromJson(json);

 final  List<String> _paths;
@override@JsonKey(name: 'path') List<String> get paths {
  if (_paths is EqualUnmodifiableListView) return _paths;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_paths);
}

 final  Json? _filter;
@override Json? get filter {
  final value = _filter;
  if (value == null) return null;
  if (_filter is EqualUnmodifiableMapView) return _filter;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  String? purpose;
@override@JsonKey(name: 'intent_to_retain') final  bool? intentToRetain;
@override final  bool? optional;

/// Create a copy of Field
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FieldCopyWith<_Field> get copyWith => __$FieldCopyWithImpl<_Field>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FieldToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Field&&const DeepCollectionEquality().equals(other._paths, _paths)&&const DeepCollectionEquality().equals(other._filter, _filter)&&(identical(other.purpose, purpose) || other.purpose == purpose)&&(identical(other.intentToRetain, intentToRetain) || other.intentToRetain == intentToRetain)&&(identical(other.optional, optional) || other.optional == optional));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_paths),const DeepCollectionEquality().hash(_filter),purpose,intentToRetain,optional);

@override
String toString() {
  return 'Field(paths: $paths, filter: $filter, purpose: $purpose, intentToRetain: $intentToRetain, optional: $optional)';
}


}

/// @nodoc
abstract mixin class _$FieldCopyWith<$Res> implements $FieldCopyWith<$Res> {
  factory _$FieldCopyWith(_Field value, $Res Function(_Field) _then) = __$FieldCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'path') List<String> paths, Json? filter, String? purpose,@JsonKey(name: 'intent_to_retain') bool? intentToRetain, bool? optional
});




}
/// @nodoc
class __$FieldCopyWithImpl<$Res>
    implements _$FieldCopyWith<$Res> {
  __$FieldCopyWithImpl(this._self, this._then);

  final _Field _self;
  final $Res Function(_Field) _then;

/// Create a copy of Field
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paths = null,Object? filter = freezed,Object? purpose = freezed,Object? intentToRetain = freezed,Object? optional = freezed,}) {
  return _then(_Field(
paths: null == paths ? _self._paths : paths // ignore: cast_nullable_to_non_nullable
as List<String>,filter: freezed == filter ? _self._filter : filter // ignore: cast_nullable_to_non_nullable
as Json?,purpose: freezed == purpose ? _self.purpose : purpose // ignore: cast_nullable_to_non_nullable
as String?,intentToRetain: freezed == intentToRetain ? _self.intentToRetain : intentToRetain // ignore: cast_nullable_to_non_nullable
as bool?,optional: freezed == optional ? _self.optional : optional // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
