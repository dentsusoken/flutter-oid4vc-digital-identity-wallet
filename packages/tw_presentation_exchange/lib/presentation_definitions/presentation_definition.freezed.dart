// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'presentation_definition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PresentationDefinitionContainer {

 String? get comment;@JsonKey(name: 'definition') PresentationDefinition get definition;
/// Create a copy of PresentationDefinitionContainer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PresentationDefinitionContainerCopyWith<PresentationDefinitionContainer> get copyWith => _$PresentationDefinitionContainerCopyWithImpl<PresentationDefinitionContainer>(this as PresentationDefinitionContainer, _$identity);

  /// Serializes this PresentationDefinitionContainer to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PresentationDefinitionContainer&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.definition, definition) || other.definition == definition));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,comment,definition);

@override
String toString() {
  return 'PresentationDefinitionContainer(comment: $comment, definition: $definition)';
}


}

/// @nodoc
abstract mixin class $PresentationDefinitionContainerCopyWith<$Res>  {
  factory $PresentationDefinitionContainerCopyWith(PresentationDefinitionContainer value, $Res Function(PresentationDefinitionContainer) _then) = _$PresentationDefinitionContainerCopyWithImpl;
@useResult
$Res call({
 String? comment,@JsonKey(name: 'definition') PresentationDefinition definition
});


$PresentationDefinitionCopyWith<$Res> get definition;

}
/// @nodoc
class _$PresentationDefinitionContainerCopyWithImpl<$Res>
    implements $PresentationDefinitionContainerCopyWith<$Res> {
  _$PresentationDefinitionContainerCopyWithImpl(this._self, this._then);

  final PresentationDefinitionContainer _self;
  final $Res Function(PresentationDefinitionContainer) _then;

/// Create a copy of PresentationDefinitionContainer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? comment = freezed,Object? definition = null,}) {
  return _then(_self.copyWith(
comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,definition: null == definition ? _self.definition : definition // ignore: cast_nullable_to_non_nullable
as PresentationDefinition,
  ));
}
/// Create a copy of PresentationDefinitionContainer
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PresentationDefinitionCopyWith<$Res> get definition {
  
  return $PresentationDefinitionCopyWith<$Res>(_self.definition, (value) {
    return _then(_self.copyWith(definition: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _PresentationDefinitionContainer implements PresentationDefinitionContainer {
   _PresentationDefinitionContainer({this.comment, @JsonKey(name: 'definition') required this.definition});
  factory _PresentationDefinitionContainer.fromJson(Map<String, dynamic> json) => _$PresentationDefinitionContainerFromJson(json);

@override final  String? comment;
@override@JsonKey(name: 'definition') final  PresentationDefinition definition;

/// Create a copy of PresentationDefinitionContainer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PresentationDefinitionContainerCopyWith<_PresentationDefinitionContainer> get copyWith => __$PresentationDefinitionContainerCopyWithImpl<_PresentationDefinitionContainer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PresentationDefinitionContainerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PresentationDefinitionContainer&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.definition, definition) || other.definition == definition));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,comment,definition);

@override
String toString() {
  return 'PresentationDefinitionContainer(comment: $comment, definition: $definition)';
}


}

/// @nodoc
abstract mixin class _$PresentationDefinitionContainerCopyWith<$Res> implements $PresentationDefinitionContainerCopyWith<$Res> {
  factory _$PresentationDefinitionContainerCopyWith(_PresentationDefinitionContainer value, $Res Function(_PresentationDefinitionContainer) _then) = __$PresentationDefinitionContainerCopyWithImpl;
@override @useResult
$Res call({
 String? comment,@JsonKey(name: 'definition') PresentationDefinition definition
});


@override $PresentationDefinitionCopyWith<$Res> get definition;

}
/// @nodoc
class __$PresentationDefinitionContainerCopyWithImpl<$Res>
    implements _$PresentationDefinitionContainerCopyWith<$Res> {
  __$PresentationDefinitionContainerCopyWithImpl(this._self, this._then);

  final _PresentationDefinitionContainer _self;
  final $Res Function(_PresentationDefinitionContainer) _then;

/// Create a copy of PresentationDefinitionContainer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? comment = freezed,Object? definition = null,}) {
  return _then(_PresentationDefinitionContainer(
comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,definition: null == definition ? _self.definition : definition // ignore: cast_nullable_to_non_nullable
as PresentationDefinition,
  ));
}

/// Create a copy of PresentationDefinitionContainer
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PresentationDefinitionCopyWith<$Res> get definition {
  
  return $PresentationDefinitionCopyWith<$Res>(_self.definition, (value) {
    return _then(_self.copyWith(definition: value));
  });
}
}


/// @nodoc
mixin _$PresentationDefinition {

 String get id; Name? get name; Purpose? get purpose;@JsonKey(name: 'format') FormatContainer? get formatContainer; List<InputDescriptor> get inputDescriptors; List<SubmissionRequirement>? get submissionRequirements;
/// Create a copy of PresentationDefinition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PresentationDefinitionCopyWith<PresentationDefinition> get copyWith => _$PresentationDefinitionCopyWithImpl<PresentationDefinition>(this as PresentationDefinition, _$identity);

  /// Serializes this PresentationDefinition to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PresentationDefinition&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.purpose, purpose) || other.purpose == purpose)&&(identical(other.formatContainer, formatContainer) || other.formatContainer == formatContainer)&&const DeepCollectionEquality().equals(other.inputDescriptors, inputDescriptors)&&const DeepCollectionEquality().equals(other.submissionRequirements, submissionRequirements));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,purpose,formatContainer,const DeepCollectionEquality().hash(inputDescriptors),const DeepCollectionEquality().hash(submissionRequirements));

@override
String toString() {
  return 'PresentationDefinition(id: $id, name: $name, purpose: $purpose, formatContainer: $formatContainer, inputDescriptors: $inputDescriptors, submissionRequirements: $submissionRequirements)';
}


}

/// @nodoc
abstract mixin class $PresentationDefinitionCopyWith<$Res>  {
  factory $PresentationDefinitionCopyWith(PresentationDefinition value, $Res Function(PresentationDefinition) _then) = _$PresentationDefinitionCopyWithImpl;
@useResult
$Res call({
 String id, Name? name, Purpose? purpose,@JsonKey(name: 'format') FormatContainer? formatContainer, List<InputDescriptor> inputDescriptors, List<SubmissionRequirement>? submissionRequirements
});


$FormatContainerCopyWith<$Res>? get formatContainer;

}
/// @nodoc
class _$PresentationDefinitionCopyWithImpl<$Res>
    implements $PresentationDefinitionCopyWith<$Res> {
  _$PresentationDefinitionCopyWithImpl(this._self, this._then);

  final PresentationDefinition _self;
  final $Res Function(PresentationDefinition) _then;

/// Create a copy of PresentationDefinition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = freezed,Object? purpose = freezed,Object? formatContainer = freezed,Object? inputDescriptors = null,Object? submissionRequirements = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as Name?,purpose: freezed == purpose ? _self.purpose : purpose // ignore: cast_nullable_to_non_nullable
as Purpose?,formatContainer: freezed == formatContainer ? _self.formatContainer : formatContainer // ignore: cast_nullable_to_non_nullable
as FormatContainer?,inputDescriptors: null == inputDescriptors ? _self.inputDescriptors : inputDescriptors // ignore: cast_nullable_to_non_nullable
as List<InputDescriptor>,submissionRequirements: freezed == submissionRequirements ? _self.submissionRequirements : submissionRequirements // ignore: cast_nullable_to_non_nullable
as List<SubmissionRequirement>?,
  ));
}
/// Create a copy of PresentationDefinition
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
}
}


/// @nodoc
@JsonSerializable()

class _PresentationDefinition implements PresentationDefinition {
   _PresentationDefinition({required this.id, this.name, this.purpose, @JsonKey(name: 'format') this.formatContainer, required final  List<InputDescriptor> inputDescriptors, final  List<SubmissionRequirement>? submissionRequirements}): _inputDescriptors = inputDescriptors,_submissionRequirements = submissionRequirements;
  factory _PresentationDefinition.fromJson(Map<String, dynamic> json) => _$PresentationDefinitionFromJson(json);

@override final  String id;
@override final  Name? name;
@override final  Purpose? purpose;
@override@JsonKey(name: 'format') final  FormatContainer? formatContainer;
 final  List<InputDescriptor> _inputDescriptors;
@override List<InputDescriptor> get inputDescriptors {
  if (_inputDescriptors is EqualUnmodifiableListView) return _inputDescriptors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_inputDescriptors);
}

 final  List<SubmissionRequirement>? _submissionRequirements;
@override List<SubmissionRequirement>? get submissionRequirements {
  final value = _submissionRequirements;
  if (value == null) return null;
  if (_submissionRequirements is EqualUnmodifiableListView) return _submissionRequirements;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of PresentationDefinition
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PresentationDefinitionCopyWith<_PresentationDefinition> get copyWith => __$PresentationDefinitionCopyWithImpl<_PresentationDefinition>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PresentationDefinitionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PresentationDefinition&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.purpose, purpose) || other.purpose == purpose)&&(identical(other.formatContainer, formatContainer) || other.formatContainer == formatContainer)&&const DeepCollectionEquality().equals(other._inputDescriptors, _inputDescriptors)&&const DeepCollectionEquality().equals(other._submissionRequirements, _submissionRequirements));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,purpose,formatContainer,const DeepCollectionEquality().hash(_inputDescriptors),const DeepCollectionEquality().hash(_submissionRequirements));

@override
String toString() {
  return 'PresentationDefinition(id: $id, name: $name, purpose: $purpose, formatContainer: $formatContainer, inputDescriptors: $inputDescriptors, submissionRequirements: $submissionRequirements)';
}


}

/// @nodoc
abstract mixin class _$PresentationDefinitionCopyWith<$Res> implements $PresentationDefinitionCopyWith<$Res> {
  factory _$PresentationDefinitionCopyWith(_PresentationDefinition value, $Res Function(_PresentationDefinition) _then) = __$PresentationDefinitionCopyWithImpl;
@override @useResult
$Res call({
 String id, Name? name, Purpose? purpose,@JsonKey(name: 'format') FormatContainer? formatContainer, List<InputDescriptor> inputDescriptors, List<SubmissionRequirement>? submissionRequirements
});


@override $FormatContainerCopyWith<$Res>? get formatContainer;

}
/// @nodoc
class __$PresentationDefinitionCopyWithImpl<$Res>
    implements _$PresentationDefinitionCopyWith<$Res> {
  __$PresentationDefinitionCopyWithImpl(this._self, this._then);

  final _PresentationDefinition _self;
  final $Res Function(_PresentationDefinition) _then;

/// Create a copy of PresentationDefinition
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = freezed,Object? purpose = freezed,Object? formatContainer = freezed,Object? inputDescriptors = null,Object? submissionRequirements = freezed,}) {
  return _then(_PresentationDefinition(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as Name?,purpose: freezed == purpose ? _self.purpose : purpose // ignore: cast_nullable_to_non_nullable
as Purpose?,formatContainer: freezed == formatContainer ? _self.formatContainer : formatContainer // ignore: cast_nullable_to_non_nullable
as FormatContainer?,inputDescriptors: null == inputDescriptors ? _self._inputDescriptors : inputDescriptors // ignore: cast_nullable_to_non_nullable
as List<InputDescriptor>,submissionRequirements: freezed == submissionRequirements ? _self._submissionRequirements : submissionRequirements // ignore: cast_nullable_to_non_nullable
as List<SubmissionRequirement>?,
  ));
}

/// Create a copy of PresentationDefinition
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
}
}

// dart format on
