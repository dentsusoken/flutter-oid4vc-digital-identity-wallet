// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'descriptor_map.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DescriptorMap {

 String get id; String get format; String get path;
/// Create a copy of DescriptorMap
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DescriptorMapCopyWith<DescriptorMap> get copyWith => _$DescriptorMapCopyWithImpl<DescriptorMap>(this as DescriptorMap, _$identity);

  /// Serializes this DescriptorMap to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DescriptorMap&&(identical(other.id, id) || other.id == id)&&(identical(other.format, format) || other.format == format)&&(identical(other.path, path) || other.path == path));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,format,path);

@override
String toString() {
  return 'DescriptorMap(id: $id, format: $format, path: $path)';
}


}

/// @nodoc
abstract mixin class $DescriptorMapCopyWith<$Res>  {
  factory $DescriptorMapCopyWith(DescriptorMap value, $Res Function(DescriptorMap) _then) = _$DescriptorMapCopyWithImpl;
@useResult
$Res call({
 String id, String format, String path
});




}
/// @nodoc
class _$DescriptorMapCopyWithImpl<$Res>
    implements $DescriptorMapCopyWith<$Res> {
  _$DescriptorMapCopyWithImpl(this._self, this._then);

  final DescriptorMap _self;
  final $Res Function(DescriptorMap) _then;

/// Create a copy of DescriptorMap
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? format = null,Object? path = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _DescriptorMap implements DescriptorMap {
   _DescriptorMap({required this.id, required this.format, required this.path});
  factory _DescriptorMap.fromJson(Map<String, dynamic> json) => _$DescriptorMapFromJson(json);

@override final  String id;
@override final  String format;
@override final  String path;

/// Create a copy of DescriptorMap
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DescriptorMapCopyWith<_DescriptorMap> get copyWith => __$DescriptorMapCopyWithImpl<_DescriptorMap>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DescriptorMapToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DescriptorMap&&(identical(other.id, id) || other.id == id)&&(identical(other.format, format) || other.format == format)&&(identical(other.path, path) || other.path == path));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,format,path);

@override
String toString() {
  return 'DescriptorMap(id: $id, format: $format, path: $path)';
}


}

/// @nodoc
abstract mixin class _$DescriptorMapCopyWith<$Res> implements $DescriptorMapCopyWith<$Res> {
  factory _$DescriptorMapCopyWith(_DescriptorMap value, $Res Function(_DescriptorMap) _then) = __$DescriptorMapCopyWithImpl;
@override @useResult
$Res call({
 String id, String format, String path
});




}
/// @nodoc
class __$DescriptorMapCopyWithImpl<$Res>
    implements _$DescriptorMapCopyWith<$Res> {
  __$DescriptorMapCopyWithImpl(this._self, this._then);

  final _DescriptorMap _self;
  final $Res Function(_DescriptorMap) _then;

/// Create a copy of DescriptorMap
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? format = null,Object? path = null,}) {
  return _then(_DescriptorMap(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
