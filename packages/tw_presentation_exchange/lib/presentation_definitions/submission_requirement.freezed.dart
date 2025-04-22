// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submission_requirement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubmissionRequirement {

 Rule get rule; int? get count; int? get min; int? get max; Group? get from; List<SubmissionRequirement>? get formNested; Name? get name; Purpose? get purpose;
/// Create a copy of SubmissionRequirement
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmissionRequirementCopyWith<SubmissionRequirement> get copyWith => _$SubmissionRequirementCopyWithImpl<SubmissionRequirement>(this as SubmissionRequirement, _$identity);

  /// Serializes this SubmissionRequirement to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmissionRequirement&&(identical(other.rule, rule) || other.rule == rule)&&(identical(other.count, count) || other.count == count)&&(identical(other.min, min) || other.min == min)&&(identical(other.max, max) || other.max == max)&&(identical(other.from, from) || other.from == from)&&const DeepCollectionEquality().equals(other.formNested, formNested)&&(identical(other.name, name) || other.name == name)&&(identical(other.purpose, purpose) || other.purpose == purpose));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rule,count,min,max,from,const DeepCollectionEquality().hash(formNested),name,purpose);

@override
String toString() {
  return 'SubmissionRequirement(rule: $rule, count: $count, min: $min, max: $max, from: $from, formNested: $formNested, name: $name, purpose: $purpose)';
}


}

/// @nodoc
abstract mixin class $SubmissionRequirementCopyWith<$Res>  {
  factory $SubmissionRequirementCopyWith(SubmissionRequirement value, $Res Function(SubmissionRequirement) _then) = _$SubmissionRequirementCopyWithImpl;
@useResult
$Res call({
 Rule rule, int? count, int? min, int? max, Group? from, List<SubmissionRequirement>? formNested, Name? name, Purpose? purpose
});




}
/// @nodoc
class _$SubmissionRequirementCopyWithImpl<$Res>
    implements $SubmissionRequirementCopyWith<$Res> {
  _$SubmissionRequirementCopyWithImpl(this._self, this._then);

  final SubmissionRequirement _self;
  final $Res Function(SubmissionRequirement) _then;

/// Create a copy of SubmissionRequirement
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rule = null,Object? count = freezed,Object? min = freezed,Object? max = freezed,Object? from = freezed,Object? formNested = freezed,Object? name = freezed,Object? purpose = freezed,}) {
  return _then(_self.copyWith(
rule: null == rule ? _self.rule : rule // ignore: cast_nullable_to_non_nullable
as Rule,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,min: freezed == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as int?,max: freezed == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as int?,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as Group?,formNested: freezed == formNested ? _self.formNested : formNested // ignore: cast_nullable_to_non_nullable
as List<SubmissionRequirement>?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as Name?,purpose: freezed == purpose ? _self.purpose : purpose // ignore: cast_nullable_to_non_nullable
as Purpose?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SubmissionRequirement implements SubmissionRequirement {
   _SubmissionRequirement({required this.rule, this.count, this.min, this.max, this.from, final  List<SubmissionRequirement>? formNested, this.name, this.purpose}): _formNested = formNested;
  factory _SubmissionRequirement.fromJson(Map<String, dynamic> json) => _$SubmissionRequirementFromJson(json);

@override final  Rule rule;
@override final  int? count;
@override final  int? min;
@override final  int? max;
@override final  Group? from;
 final  List<SubmissionRequirement>? _formNested;
@override List<SubmissionRequirement>? get formNested {
  final value = _formNested;
  if (value == null) return null;
  if (_formNested is EqualUnmodifiableListView) return _formNested;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  Name? name;
@override final  Purpose? purpose;

/// Create a copy of SubmissionRequirement
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmissionRequirementCopyWith<_SubmissionRequirement> get copyWith => __$SubmissionRequirementCopyWithImpl<_SubmissionRequirement>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubmissionRequirementToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmissionRequirement&&(identical(other.rule, rule) || other.rule == rule)&&(identical(other.count, count) || other.count == count)&&(identical(other.min, min) || other.min == min)&&(identical(other.max, max) || other.max == max)&&(identical(other.from, from) || other.from == from)&&const DeepCollectionEquality().equals(other._formNested, _formNested)&&(identical(other.name, name) || other.name == name)&&(identical(other.purpose, purpose) || other.purpose == purpose));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rule,count,min,max,from,const DeepCollectionEquality().hash(_formNested),name,purpose);

@override
String toString() {
  return 'SubmissionRequirement(rule: $rule, count: $count, min: $min, max: $max, from: $from, formNested: $formNested, name: $name, purpose: $purpose)';
}


}

/// @nodoc
abstract mixin class _$SubmissionRequirementCopyWith<$Res> implements $SubmissionRequirementCopyWith<$Res> {
  factory _$SubmissionRequirementCopyWith(_SubmissionRequirement value, $Res Function(_SubmissionRequirement) _then) = __$SubmissionRequirementCopyWithImpl;
@override @useResult
$Res call({
 Rule rule, int? count, int? min, int? max, Group? from, List<SubmissionRequirement>? formNested, Name? name, Purpose? purpose
});




}
/// @nodoc
class __$SubmissionRequirementCopyWithImpl<$Res>
    implements _$SubmissionRequirementCopyWith<$Res> {
  __$SubmissionRequirementCopyWithImpl(this._self, this._then);

  final _SubmissionRequirement _self;
  final $Res Function(_SubmissionRequirement) _then;

/// Create a copy of SubmissionRequirement
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rule = null,Object? count = freezed,Object? min = freezed,Object? max = freezed,Object? from = freezed,Object? formNested = freezed,Object? name = freezed,Object? purpose = freezed,}) {
  return _then(_SubmissionRequirement(
rule: null == rule ? _self.rule : rule // ignore: cast_nullable_to_non_nullable
as Rule,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,min: freezed == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as int?,max: freezed == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as int?,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as Group?,formNested: freezed == formNested ? _self._formNested : formNested // ignore: cast_nullable_to_non_nullable
as List<SubmissionRequirement>?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as Name?,purpose: freezed == purpose ? _self.purpose : purpose // ignore: cast_nullable_to_non_nullable
as Purpose?,
  ));
}


}

// dart format on
