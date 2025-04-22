// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_descriptor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InputDescriptor {

 InputDescriptorId get id; Name? get name; Purpose? get purpose;@JsonKey(name: 'format') FormatContainer? get formatContainer; Constraints? get constraints;@JsonKey(name: 'group') List<Group>? get groups;
/// Create a copy of InputDescriptor
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InputDescriptorCopyWith<InputDescriptor> get copyWith => _$InputDescriptorCopyWithImpl<InputDescriptor>(this as InputDescriptor, _$identity);

  /// Serializes this InputDescriptor to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InputDescriptor&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.purpose, purpose) || other.purpose == purpose)&&(identical(other.formatContainer, formatContainer) || other.formatContainer == formatContainer)&&(identical(other.constraints, constraints) || other.constraints == constraints)&&const DeepCollectionEquality().equals(other.groups, groups));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,purpose,formatContainer,constraints,const DeepCollectionEquality().hash(groups));

@override
String toString() {
  return 'InputDescriptor(id: $id, name: $name, purpose: $purpose, formatContainer: $formatContainer, constraints: $constraints, groups: $groups)';
}


}

/// @nodoc
abstract mixin class $InputDescriptorCopyWith<$Res>  {
  factory $InputDescriptorCopyWith(InputDescriptor value, $Res Function(InputDescriptor) _then) = _$InputDescriptorCopyWithImpl;
@useResult
$Res call({
 InputDescriptorId id, Name? name, Purpose? purpose,@JsonKey(name: 'format') FormatContainer? formatContainer, Constraints? constraints,@JsonKey(name: 'group') List<Group>? groups
});


$FormatContainerCopyWith<$Res>? get formatContainer;$ConstraintsCopyWith<$Res>? get constraints;

}
/// @nodoc
class _$InputDescriptorCopyWithImpl<$Res>
    implements $InputDescriptorCopyWith<$Res> {
  _$InputDescriptorCopyWithImpl(this._self, this._then);

  final InputDescriptor _self;
  final $Res Function(InputDescriptor) _then;

/// Create a copy of InputDescriptor
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = freezed,Object? purpose = freezed,Object? formatContainer = freezed,Object? constraints = freezed,Object? groups = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as InputDescriptorId,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as Name?,purpose: freezed == purpose ? _self.purpose : purpose // ignore: cast_nullable_to_non_nullable
as Purpose?,formatContainer: freezed == formatContainer ? _self.formatContainer : formatContainer // ignore: cast_nullable_to_non_nullable
as FormatContainer?,constraints: freezed == constraints ? _self.constraints : constraints // ignore: cast_nullable_to_non_nullable
as Constraints?,groups: freezed == groups ? _self.groups : groups // ignore: cast_nullable_to_non_nullable
as List<Group>?,
  ));
}
/// Create a copy of InputDescriptor
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FormatContainerCopyWith<$Res>? get formatContainer {
    if (_self.formatContainer == null) {
    return null;
  }

  return $FormatContainerCopyWith<$Res>(_self.formatContainer!, (value) {
    return _then(_self.copyWith(formatContainer: value));
  });
}/// Create a copy of InputDescriptor
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConstraintsCopyWith<$Res>? get constraints {
    if (_self.constraints == null) {
    return null;
  }

  return $ConstraintsCopyWith<$Res>(_self.constraints!, (value) {
    return _then(_self.copyWith(constraints: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _InputDescriptor implements InputDescriptor {
   _InputDescriptor({required this.id, this.name, this.purpose, @JsonKey(name: 'format') this.formatContainer, this.constraints, @JsonKey(name: 'group') final  List<Group>? groups}): _groups = groups;
  factory _InputDescriptor.fromJson(Map<String, dynamic> json) => _$InputDescriptorFromJson(json);

@override final  InputDescriptorId id;
@override final  Name? name;
@override final  Purpose? purpose;
@override@JsonKey(name: 'format') final  FormatContainer? formatContainer;
@override final  Constraints? constraints;
 final  List<Group>? _groups;
@override@JsonKey(name: 'group') List<Group>? get groups {
  final value = _groups;
  if (value == null) return null;
  if (_groups is EqualUnmodifiableListView) return _groups;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of InputDescriptor
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InputDescriptorCopyWith<_InputDescriptor> get copyWith => __$InputDescriptorCopyWithImpl<_InputDescriptor>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InputDescriptorToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InputDescriptor&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.purpose, purpose) || other.purpose == purpose)&&(identical(other.formatContainer, formatContainer) || other.formatContainer == formatContainer)&&(identical(other.constraints, constraints) || other.constraints == constraints)&&const DeepCollectionEquality().equals(other._groups, _groups));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,purpose,formatContainer,constraints,const DeepCollectionEquality().hash(_groups));

@override
String toString() {
  return 'InputDescriptor(id: $id, name: $name, purpose: $purpose, formatContainer: $formatContainer, constraints: $constraints, groups: $groups)';
}


}

/// @nodoc
abstract mixin class _$InputDescriptorCopyWith<$Res> implements $InputDescriptorCopyWith<$Res> {
  factory _$InputDescriptorCopyWith(_InputDescriptor value, $Res Function(_InputDescriptor) _then) = __$InputDescriptorCopyWithImpl;
@override @useResult
$Res call({
 InputDescriptorId id, Name? name, Purpose? purpose,@JsonKey(name: 'format') FormatContainer? formatContainer, Constraints? constraints,@JsonKey(name: 'group') List<Group>? groups
});


@override $FormatContainerCopyWith<$Res>? get formatContainer;@override $ConstraintsCopyWith<$Res>? get constraints;

}
/// @nodoc
class __$InputDescriptorCopyWithImpl<$Res>
    implements _$InputDescriptorCopyWith<$Res> {
  __$InputDescriptorCopyWithImpl(this._self, this._then);

  final _InputDescriptor _self;
  final $Res Function(_InputDescriptor) _then;

/// Create a copy of InputDescriptor
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = freezed,Object? purpose = freezed,Object? formatContainer = freezed,Object? constraints = freezed,Object? groups = freezed,}) {
  return _then(_InputDescriptor(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as InputDescriptorId,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as Name?,purpose: freezed == purpose ? _self.purpose : purpose // ignore: cast_nullable_to_non_nullable
as Purpose?,formatContainer: freezed == formatContainer ? _self.formatContainer : formatContainer // ignore: cast_nullable_to_non_nullable
as FormatContainer?,constraints: freezed == constraints ? _self.constraints : constraints // ignore: cast_nullable_to_non_nullable
as Constraints?,groups: freezed == groups ? _self._groups : groups // ignore: cast_nullable_to_non_nullable
as List<Group>?,
  ));
}

/// Create a copy of InputDescriptor
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FormatContainerCopyWith<$Res>? get formatContainer {
    if (_self.formatContainer == null) {
    return null;
  }

  return $FormatContainerCopyWith<$Res>(_self.formatContainer!, (value) {
    return _then(_self.copyWith(formatContainer: value));
  });
}/// Create a copy of InputDescriptor
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConstraintsCopyWith<$Res>? get constraints {
    if (_self.constraints == null) {
    return null;
  }

  return $ConstraintsCopyWith<$Res>(_self.constraints!, (value) {
    return _then(_self.copyWith(constraints: value));
  });
}
}

// dart format on
