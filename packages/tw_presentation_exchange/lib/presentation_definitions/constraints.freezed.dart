// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'constraints.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Constraints {

 List<Field> get fields;
/// Create a copy of Constraints
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConstraintsCopyWith<Constraints> get copyWith => _$ConstraintsCopyWithImpl<Constraints>(this as Constraints, _$identity);

  /// Serializes this Constraints to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Constraints&&const DeepCollectionEquality().equals(other.fields, fields));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(fields));

@override
String toString() {
  return 'Constraints(fields: $fields)';
}


}

/// @nodoc
abstract mixin class $ConstraintsCopyWith<$Res>  {
  factory $ConstraintsCopyWith(Constraints value, $Res Function(Constraints) _then) = _$ConstraintsCopyWithImpl;
@useResult
$Res call({
 List<Field> fields
});




}
/// @nodoc
class _$ConstraintsCopyWithImpl<$Res>
    implements $ConstraintsCopyWith<$Res> {
  _$ConstraintsCopyWithImpl(this._self, this._then);

  final Constraints _self;
  final $Res Function(Constraints) _then;

/// Create a copy of Constraints
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fields = null,}) {
  return _then(_self.copyWith(
fields: null == fields ? _self.fields : fields // ignore: cast_nullable_to_non_nullable
as List<Field>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Constraints implements Constraints {
   _Constraints({required final  List<Field> fields}): _fields = fields;
  factory _Constraints.fromJson(Map<String, dynamic> json) => _$ConstraintsFromJson(json);

 final  List<Field> _fields;
@override List<Field> get fields {
  if (_fields is EqualUnmodifiableListView) return _fields;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fields);
}


/// Create a copy of Constraints
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConstraintsCopyWith<_Constraints> get copyWith => __$ConstraintsCopyWithImpl<_Constraints>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConstraintsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Constraints&&const DeepCollectionEquality().equals(other._fields, _fields));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_fields));

@override
String toString() {
  return 'Constraints(fields: $fields)';
}


}

/// @nodoc
abstract mixin class _$ConstraintsCopyWith<$Res> implements $ConstraintsCopyWith<$Res> {
  factory _$ConstraintsCopyWith(_Constraints value, $Res Function(_Constraints) _then) = __$ConstraintsCopyWithImpl;
@override @useResult
$Res call({
 List<Field> fields
});




}
/// @nodoc
class __$ConstraintsCopyWithImpl<$Res>
    implements _$ConstraintsCopyWith<$Res> {
  __$ConstraintsCopyWithImpl(this._self, this._then);

  final _Constraints _self;
  final $Res Function(_Constraints) _then;

/// Create a copy of Constraints
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fields = null,}) {
  return _then(_Constraints(
fields: null == fields ? _self._fields : fields // ignore: cast_nullable_to_non_nullable
as List<Field>,
  ));
}


}

// dart format on
