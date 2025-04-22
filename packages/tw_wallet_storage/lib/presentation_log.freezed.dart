// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'presentation_log.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PresentationLog {

 String get id; String? get verifierName; String? get verifierURL; DateTime get submitAt; bool get isSuccess; String? get idToken; String? get vpToken; PresentationSubmission? get presentationSubmission; String? get message;
/// Create a copy of PresentationLog
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PresentationLogCopyWith<PresentationLog> get copyWith => _$PresentationLogCopyWithImpl<PresentationLog>(this as PresentationLog, _$identity);

  /// Serializes this PresentationLog to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PresentationLog&&(identical(other.id, id) || other.id == id)&&(identical(other.verifierName, verifierName) || other.verifierName == verifierName)&&(identical(other.verifierURL, verifierURL) || other.verifierURL == verifierURL)&&(identical(other.submitAt, submitAt) || other.submitAt == submitAt)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.idToken, idToken) || other.idToken == idToken)&&(identical(other.vpToken, vpToken) || other.vpToken == vpToken)&&(identical(other.presentationSubmission, presentationSubmission) || other.presentationSubmission == presentationSubmission)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,verifierName,verifierURL,submitAt,isSuccess,idToken,vpToken,presentationSubmission,message);

@override
String toString() {
  return 'PresentationLog(id: $id, verifierName: $verifierName, verifierURL: $verifierURL, submitAt: $submitAt, isSuccess: $isSuccess, idToken: $idToken, vpToken: $vpToken, presentationSubmission: $presentationSubmission, message: $message)';
}


}

/// @nodoc
abstract mixin class $PresentationLogCopyWith<$Res>  {
  factory $PresentationLogCopyWith(PresentationLog value, $Res Function(PresentationLog) _then) = _$PresentationLogCopyWithImpl;
@useResult
$Res call({
 String id, String? verifierName, String? verifierURL, DateTime submitAt, bool isSuccess, String? idToken, String? vpToken, PresentationSubmission? presentationSubmission, String? message
});


$PresentationSubmissionCopyWith<$Res>? get presentationSubmission;

}
/// @nodoc
class _$PresentationLogCopyWithImpl<$Res>
    implements $PresentationLogCopyWith<$Res> {
  _$PresentationLogCopyWithImpl(this._self, this._then);

  final PresentationLog _self;
  final $Res Function(PresentationLog) _then;

/// Create a copy of PresentationLog
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? verifierName = freezed,Object? verifierURL = freezed,Object? submitAt = null,Object? isSuccess = null,Object? idToken = freezed,Object? vpToken = freezed,Object? presentationSubmission = freezed,Object? message = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,verifierName: freezed == verifierName ? _self.verifierName : verifierName // ignore: cast_nullable_to_non_nullable
as String?,verifierURL: freezed == verifierURL ? _self.verifierURL : verifierURL // ignore: cast_nullable_to_non_nullable
as String?,submitAt: null == submitAt ? _self.submitAt : submitAt // ignore: cast_nullable_to_non_nullable
as DateTime,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,idToken: freezed == idToken ? _self.idToken : idToken // ignore: cast_nullable_to_non_nullable
as String?,vpToken: freezed == vpToken ? _self.vpToken : vpToken // ignore: cast_nullable_to_non_nullable
as String?,presentationSubmission: freezed == presentationSubmission ? _self.presentationSubmission : presentationSubmission // ignore: cast_nullable_to_non_nullable
as PresentationSubmission?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of PresentationLog
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PresentationSubmissionCopyWith<$Res>? get presentationSubmission {
    if (_self.presentationSubmission == null) {
    return null;
  }

  return $PresentationSubmissionCopyWith<$Res>(_self.presentationSubmission!, (value) {
    return _then(_self.copyWith(presentationSubmission: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _PresentationLog extends PresentationLog {
   _PresentationLog({required this.id, this.verifierName, this.verifierURL, required this.submitAt, required this.isSuccess, this.idToken, this.vpToken, this.presentationSubmission, this.message}): super._();
  factory _PresentationLog.fromJson(Map<String, dynamic> json) => _$PresentationLogFromJson(json);

@override final  String id;
@override final  String? verifierName;
@override final  String? verifierURL;
@override final  DateTime submitAt;
@override final  bool isSuccess;
@override final  String? idToken;
@override final  String? vpToken;
@override final  PresentationSubmission? presentationSubmission;
@override final  String? message;

/// Create a copy of PresentationLog
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PresentationLogCopyWith<_PresentationLog> get copyWith => __$PresentationLogCopyWithImpl<_PresentationLog>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PresentationLogToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PresentationLog&&(identical(other.id, id) || other.id == id)&&(identical(other.verifierName, verifierName) || other.verifierName == verifierName)&&(identical(other.verifierURL, verifierURL) || other.verifierURL == verifierURL)&&(identical(other.submitAt, submitAt) || other.submitAt == submitAt)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.idToken, idToken) || other.idToken == idToken)&&(identical(other.vpToken, vpToken) || other.vpToken == vpToken)&&(identical(other.presentationSubmission, presentationSubmission) || other.presentationSubmission == presentationSubmission)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,verifierName,verifierURL,submitAt,isSuccess,idToken,vpToken,presentationSubmission,message);

@override
String toString() {
  return 'PresentationLog(id: $id, verifierName: $verifierName, verifierURL: $verifierURL, submitAt: $submitAt, isSuccess: $isSuccess, idToken: $idToken, vpToken: $vpToken, presentationSubmission: $presentationSubmission, message: $message)';
}


}

/// @nodoc
abstract mixin class _$PresentationLogCopyWith<$Res> implements $PresentationLogCopyWith<$Res> {
  factory _$PresentationLogCopyWith(_PresentationLog value, $Res Function(_PresentationLog) _then) = __$PresentationLogCopyWithImpl;
@override @useResult
$Res call({
 String id, String? verifierName, String? verifierURL, DateTime submitAt, bool isSuccess, String? idToken, String? vpToken, PresentationSubmission? presentationSubmission, String? message
});


@override $PresentationSubmissionCopyWith<$Res>? get presentationSubmission;

}
/// @nodoc
class __$PresentationLogCopyWithImpl<$Res>
    implements _$PresentationLogCopyWith<$Res> {
  __$PresentationLogCopyWithImpl(this._self, this._then);

  final _PresentationLog _self;
  final $Res Function(_PresentationLog) _then;

/// Create a copy of PresentationLog
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? verifierName = freezed,Object? verifierURL = freezed,Object? submitAt = null,Object? isSuccess = null,Object? idToken = freezed,Object? vpToken = freezed,Object? presentationSubmission = freezed,Object? message = freezed,}) {
  return _then(_PresentationLog(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,verifierName: freezed == verifierName ? _self.verifierName : verifierName // ignore: cast_nullable_to_non_nullable
as String?,verifierURL: freezed == verifierURL ? _self.verifierURL : verifierURL // ignore: cast_nullable_to_non_nullable
as String?,submitAt: null == submitAt ? _self.submitAt : submitAt // ignore: cast_nullable_to_non_nullable
as DateTime,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,idToken: freezed == idToken ? _self.idToken : idToken // ignore: cast_nullable_to_non_nullable
as String?,vpToken: freezed == vpToken ? _self.vpToken : vpToken // ignore: cast_nullable_to_non_nullable
as String?,presentationSubmission: freezed == presentationSubmission ? _self.presentationSubmission : presentationSubmission // ignore: cast_nullable_to_non_nullable
as PresentationSubmission?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of PresentationLog
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PresentationSubmissionCopyWith<$Res>? get presentationSubmission {
    if (_self.presentationSubmission == null) {
    return null;
  }

  return $PresentationSubmissionCopyWith<$Res>(_self.presentationSubmission!, (value) {
    return _then(_self.copyWith(presentationSubmission: value));
  });
}
}

// dart format on
