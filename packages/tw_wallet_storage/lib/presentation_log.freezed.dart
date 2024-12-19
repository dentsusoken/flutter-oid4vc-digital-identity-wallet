// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'presentation_log.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PresentationLog _$PresentationLogFromJson(Map<String, dynamic> json) {
  return _PresentationLog.fromJson(json);
}

/// @nodoc
mixin _$PresentationLog {
  String get id => throw _privateConstructorUsedError;
  String? get verifierName => throw _privateConstructorUsedError;
  String? get verifierURL => throw _privateConstructorUsedError;
  DateTime get submitAt => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  String? get idToken => throw _privateConstructorUsedError;
  String? get vpToken => throw _privateConstructorUsedError;
  PresentationSubmission? get presentationSubmission =>
      throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this PresentationLog to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PresentationLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PresentationLogCopyWith<PresentationLog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresentationLogCopyWith<$Res> {
  factory $PresentationLogCopyWith(
          PresentationLog value, $Res Function(PresentationLog) then) =
      _$PresentationLogCopyWithImpl<$Res, PresentationLog>;
  @useResult
  $Res call(
      {String id,
      String? verifierName,
      String? verifierURL,
      DateTime submitAt,
      bool isSuccess,
      String? idToken,
      String? vpToken,
      PresentationSubmission? presentationSubmission,
      String? message});

  $PresentationSubmissionCopyWith<$Res>? get presentationSubmission;
}

/// @nodoc
class _$PresentationLogCopyWithImpl<$Res, $Val extends PresentationLog>
    implements $PresentationLogCopyWith<$Res> {
  _$PresentationLogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PresentationLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? verifierName = freezed,
    Object? verifierURL = freezed,
    Object? submitAt = null,
    Object? isSuccess = null,
    Object? idToken = freezed,
    Object? vpToken = freezed,
    Object? presentationSubmission = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      verifierName: freezed == verifierName
          ? _value.verifierName
          : verifierName // ignore: cast_nullable_to_non_nullable
              as String?,
      verifierURL: freezed == verifierURL
          ? _value.verifierURL
          : verifierURL // ignore: cast_nullable_to_non_nullable
              as String?,
      submitAt: null == submitAt
          ? _value.submitAt
          : submitAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      idToken: freezed == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String?,
      vpToken: freezed == vpToken
          ? _value.vpToken
          : vpToken // ignore: cast_nullable_to_non_nullable
              as String?,
      presentationSubmission: freezed == presentationSubmission
          ? _value.presentationSubmission
          : presentationSubmission // ignore: cast_nullable_to_non_nullable
              as PresentationSubmission?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of PresentationLog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PresentationSubmissionCopyWith<$Res>? get presentationSubmission {
    if (_value.presentationSubmission == null) {
      return null;
    }

    return $PresentationSubmissionCopyWith<$Res>(_value.presentationSubmission!,
        (value) {
      return _then(_value.copyWith(presentationSubmission: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PresentationLogImplCopyWith<$Res>
    implements $PresentationLogCopyWith<$Res> {
  factory _$$PresentationLogImplCopyWith(_$PresentationLogImpl value,
          $Res Function(_$PresentationLogImpl) then) =
      __$$PresentationLogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? verifierName,
      String? verifierURL,
      DateTime submitAt,
      bool isSuccess,
      String? idToken,
      String? vpToken,
      PresentationSubmission? presentationSubmission,
      String? message});

  @override
  $PresentationSubmissionCopyWith<$Res>? get presentationSubmission;
}

/// @nodoc
class __$$PresentationLogImplCopyWithImpl<$Res>
    extends _$PresentationLogCopyWithImpl<$Res, _$PresentationLogImpl>
    implements _$$PresentationLogImplCopyWith<$Res> {
  __$$PresentationLogImplCopyWithImpl(
      _$PresentationLogImpl _value, $Res Function(_$PresentationLogImpl) _then)
      : super(_value, _then);

  /// Create a copy of PresentationLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? verifierName = freezed,
    Object? verifierURL = freezed,
    Object? submitAt = null,
    Object? isSuccess = null,
    Object? idToken = freezed,
    Object? vpToken = freezed,
    Object? presentationSubmission = freezed,
    Object? message = freezed,
  }) {
    return _then(_$PresentationLogImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      verifierName: freezed == verifierName
          ? _value.verifierName
          : verifierName // ignore: cast_nullable_to_non_nullable
              as String?,
      verifierURL: freezed == verifierURL
          ? _value.verifierURL
          : verifierURL // ignore: cast_nullable_to_non_nullable
              as String?,
      submitAt: null == submitAt
          ? _value.submitAt
          : submitAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      idToken: freezed == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String?,
      vpToken: freezed == vpToken
          ? _value.vpToken
          : vpToken // ignore: cast_nullable_to_non_nullable
              as String?,
      presentationSubmission: freezed == presentationSubmission
          ? _value.presentationSubmission
          : presentationSubmission // ignore: cast_nullable_to_non_nullable
              as PresentationSubmission?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PresentationLogImpl extends _PresentationLog {
  _$PresentationLogImpl(
      {required this.id,
      this.verifierName,
      this.verifierURL,
      required this.submitAt,
      required this.isSuccess,
      this.idToken,
      this.vpToken,
      this.presentationSubmission,
      this.message})
      : super._();

  factory _$PresentationLogImpl.fromJson(Map<String, dynamic> json) =>
      _$$PresentationLogImplFromJson(json);

  @override
  final String id;
  @override
  final String? verifierName;
  @override
  final String? verifierURL;
  @override
  final DateTime submitAt;
  @override
  final bool isSuccess;
  @override
  final String? idToken;
  @override
  final String? vpToken;
  @override
  final PresentationSubmission? presentationSubmission;
  @override
  final String? message;

  @override
  String toString() {
    return 'PresentationLog(id: $id, verifierName: $verifierName, verifierURL: $verifierURL, submitAt: $submitAt, isSuccess: $isSuccess, idToken: $idToken, vpToken: $vpToken, presentationSubmission: $presentationSubmission, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PresentationLogImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.verifierName, verifierName) ||
                other.verifierName == verifierName) &&
            (identical(other.verifierURL, verifierURL) ||
                other.verifierURL == verifierURL) &&
            (identical(other.submitAt, submitAt) ||
                other.submitAt == submitAt) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.idToken, idToken) || other.idToken == idToken) &&
            (identical(other.vpToken, vpToken) || other.vpToken == vpToken) &&
            (identical(other.presentationSubmission, presentationSubmission) ||
                other.presentationSubmission == presentationSubmission) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, verifierName, verifierURL,
      submitAt, isSuccess, idToken, vpToken, presentationSubmission, message);

  /// Create a copy of PresentationLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PresentationLogImplCopyWith<_$PresentationLogImpl> get copyWith =>
      __$$PresentationLogImplCopyWithImpl<_$PresentationLogImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PresentationLogImplToJson(
      this,
    );
  }
}

abstract class _PresentationLog extends PresentationLog {
  factory _PresentationLog(
      {required final String id,
      final String? verifierName,
      final String? verifierURL,
      required final DateTime submitAt,
      required final bool isSuccess,
      final String? idToken,
      final String? vpToken,
      final PresentationSubmission? presentationSubmission,
      final String? message}) = _$PresentationLogImpl;
  _PresentationLog._() : super._();

  factory _PresentationLog.fromJson(Map<String, dynamic> json) =
      _$PresentationLogImpl.fromJson;

  @override
  String get id;
  @override
  String? get verifierName;
  @override
  String? get verifierURL;
  @override
  DateTime get submitAt;
  @override
  bool get isSuccess;
  @override
  String? get idToken;
  @override
  String? get vpToken;
  @override
  PresentationSubmission? get presentationSubmission;
  @override
  String? get message;

  /// Create a copy of PresentationLog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PresentationLogImplCopyWith<_$PresentationLogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
