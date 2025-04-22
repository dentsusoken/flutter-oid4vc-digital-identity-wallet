// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'presentation_submission.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PresentationSubmissionContainer {

@JsonKey(name: "presentation_submission") PresentationSubmission get submission;
/// Create a copy of PresentationSubmissionContainer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PresentationSubmissionContainerCopyWith<PresentationSubmissionContainer> get copyWith => _$PresentationSubmissionContainerCopyWithImpl<PresentationSubmissionContainer>(this as PresentationSubmissionContainer, _$identity);

  /// Serializes this PresentationSubmissionContainer to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PresentationSubmissionContainer&&(identical(other.submission, submission) || other.submission == submission));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,submission);

@override
String toString() {
  return 'PresentationSubmissionContainer(submission: $submission)';
}


}

/// @nodoc
abstract mixin class $PresentationSubmissionContainerCopyWith<$Res>  {
  factory $PresentationSubmissionContainerCopyWith(PresentationSubmissionContainer value, $Res Function(PresentationSubmissionContainer) _then) = _$PresentationSubmissionContainerCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "presentation_submission") PresentationSubmission submission
});


$PresentationSubmissionCopyWith<$Res> get submission;

}
/// @nodoc
class _$PresentationSubmissionContainerCopyWithImpl<$Res>
    implements $PresentationSubmissionContainerCopyWith<$Res> {
  _$PresentationSubmissionContainerCopyWithImpl(this._self, this._then);

  final PresentationSubmissionContainer _self;
  final $Res Function(PresentationSubmissionContainer) _then;

/// Create a copy of PresentationSubmissionContainer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? submission = null,}) {
  return _then(_self.copyWith(
submission: null == submission ? _self.submission : submission // ignore: cast_nullable_to_non_nullable
as PresentationSubmission,
  ));
}
/// Create a copy of PresentationSubmissionContainer
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PresentationSubmissionCopyWith<$Res> get submission {
  
  return $PresentationSubmissionCopyWith<$Res>(_self.submission, (value) {
    return _then(_self.copyWith(submission: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _PresentationSubmissionContainer implements PresentationSubmissionContainer {
   _PresentationSubmissionContainer({@JsonKey(name: "presentation_submission") required this.submission});
  factory _PresentationSubmissionContainer.fromJson(Map<String, dynamic> json) => _$PresentationSubmissionContainerFromJson(json);

@override@JsonKey(name: "presentation_submission") final  PresentationSubmission submission;

/// Create a copy of PresentationSubmissionContainer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PresentationSubmissionContainerCopyWith<_PresentationSubmissionContainer> get copyWith => __$PresentationSubmissionContainerCopyWithImpl<_PresentationSubmissionContainer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PresentationSubmissionContainerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PresentationSubmissionContainer&&(identical(other.submission, submission) || other.submission == submission));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,submission);

@override
String toString() {
  return 'PresentationSubmissionContainer(submission: $submission)';
}


}

/// @nodoc
abstract mixin class _$PresentationSubmissionContainerCopyWith<$Res> implements $PresentationSubmissionContainerCopyWith<$Res> {
  factory _$PresentationSubmissionContainerCopyWith(_PresentationSubmissionContainer value, $Res Function(_PresentationSubmissionContainer) _then) = __$PresentationSubmissionContainerCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "presentation_submission") PresentationSubmission submission
});


@override $PresentationSubmissionCopyWith<$Res> get submission;

}
/// @nodoc
class __$PresentationSubmissionContainerCopyWithImpl<$Res>
    implements _$PresentationSubmissionContainerCopyWith<$Res> {
  __$PresentationSubmissionContainerCopyWithImpl(this._self, this._then);

  final _PresentationSubmissionContainer _self;
  final $Res Function(_PresentationSubmissionContainer) _then;

/// Create a copy of PresentationSubmissionContainer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? submission = null,}) {
  return _then(_PresentationSubmissionContainer(
submission: null == submission ? _self.submission : submission // ignore: cast_nullable_to_non_nullable
as PresentationSubmission,
  ));
}

/// Create a copy of PresentationSubmissionContainer
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PresentationSubmissionCopyWith<$Res> get submission {
  
  return $PresentationSubmissionCopyWith<$Res>(_self.submission, (value) {
    return _then(_self.copyWith(submission: value));
  });
}
}


/// @nodoc
mixin _$PresentationSubmission {

 String get id;@JsonKey(name: "definition_id") String get definitionID; List<DescriptorMap> get descriptorMap;
/// Create a copy of PresentationSubmission
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PresentationSubmissionCopyWith<PresentationSubmission> get copyWith => _$PresentationSubmissionCopyWithImpl<PresentationSubmission>(this as PresentationSubmission, _$identity);

  /// Serializes this PresentationSubmission to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PresentationSubmission&&(identical(other.id, id) || other.id == id)&&(identical(other.definitionID, definitionID) || other.definitionID == definitionID)&&const DeepCollectionEquality().equals(other.descriptorMap, descriptorMap));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,definitionID,const DeepCollectionEquality().hash(descriptorMap));

@override
String toString() {
  return 'PresentationSubmission(id: $id, definitionID: $definitionID, descriptorMap: $descriptorMap)';
}


}

/// @nodoc
abstract mixin class $PresentationSubmissionCopyWith<$Res>  {
  factory $PresentationSubmissionCopyWith(PresentationSubmission value, $Res Function(PresentationSubmission) _then) = _$PresentationSubmissionCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: "definition_id") String definitionID, List<DescriptorMap> descriptorMap
});




}
/// @nodoc
class _$PresentationSubmissionCopyWithImpl<$Res>
    implements $PresentationSubmissionCopyWith<$Res> {
  _$PresentationSubmissionCopyWithImpl(this._self, this._then);

  final PresentationSubmission _self;
  final $Res Function(PresentationSubmission) _then;

/// Create a copy of PresentationSubmission
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? definitionID = null,Object? descriptorMap = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,definitionID: null == definitionID ? _self.definitionID : definitionID // ignore: cast_nullable_to_non_nullable
as String,descriptorMap: null == descriptorMap ? _self.descriptorMap : descriptorMap // ignore: cast_nullable_to_non_nullable
as List<DescriptorMap>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PresentationSubmission implements PresentationSubmission {
   _PresentationSubmission({required this.id, @JsonKey(name: "definition_id") required this.definitionID, required final  List<DescriptorMap> descriptorMap}): _descriptorMap = descriptorMap;
  factory _PresentationSubmission.fromJson(Map<String, dynamic> json) => _$PresentationSubmissionFromJson(json);

@override final  String id;
@override@JsonKey(name: "definition_id") final  String definitionID;
 final  List<DescriptorMap> _descriptorMap;
@override List<DescriptorMap> get descriptorMap {
  if (_descriptorMap is EqualUnmodifiableListView) return _descriptorMap;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_descriptorMap);
}


/// Create a copy of PresentationSubmission
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PresentationSubmissionCopyWith<_PresentationSubmission> get copyWith => __$PresentationSubmissionCopyWithImpl<_PresentationSubmission>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PresentationSubmissionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PresentationSubmission&&(identical(other.id, id) || other.id == id)&&(identical(other.definitionID, definitionID) || other.definitionID == definitionID)&&const DeepCollectionEquality().equals(other._descriptorMap, _descriptorMap));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,definitionID,const DeepCollectionEquality().hash(_descriptorMap));

@override
String toString() {
  return 'PresentationSubmission(id: $id, definitionID: $definitionID, descriptorMap: $descriptorMap)';
}


}

/// @nodoc
abstract mixin class _$PresentationSubmissionCopyWith<$Res> implements $PresentationSubmissionCopyWith<$Res> {
  factory _$PresentationSubmissionCopyWith(_PresentationSubmission value, $Res Function(_PresentationSubmission) _then) = __$PresentationSubmissionCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: "definition_id") String definitionID, List<DescriptorMap> descriptorMap
});




}
/// @nodoc
class __$PresentationSubmissionCopyWithImpl<$Res>
    implements _$PresentationSubmissionCopyWith<$Res> {
  __$PresentationSubmissionCopyWithImpl(this._self, this._then);

  final _PresentationSubmission _self;
  final $Res Function(_PresentationSubmission) _then;

/// Create a copy of PresentationSubmission
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? definitionID = null,Object? descriptorMap = null,}) {
  return _then(_PresentationSubmission(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,definitionID: null == definitionID ? _self.definitionID : definitionID // ignore: cast_nullable_to_non_nullable
as String,descriptorMap: null == descriptorMap ? _self._descriptorMap : descriptorMap // ignore: cast_nullable_to_non_nullable
as List<DescriptorMap>,
  ));
}


}

// dart format on
