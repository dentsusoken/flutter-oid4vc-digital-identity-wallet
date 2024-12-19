// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'presentation_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PresentationLogImpl _$$PresentationLogImplFromJson(
        Map<String, dynamic> json) =>
    _$PresentationLogImpl(
      id: json['id'] as String,
      verifierName: json['verifierName'] as String?,
      verifierURL: json['verifierURL'] as String?,
      submitAt: DateTime.parse(json['submitAt'] as String),
      isSuccess: json['isSuccess'] as bool,
      idToken: json['idToken'] as String?,
      vpToken: json['vpToken'] as String?,
      presentationSubmission: json['presentationSubmission'] == null
          ? null
          : PresentationSubmission.fromJson(
              json['presentationSubmission'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$PresentationLogImplToJson(
        _$PresentationLogImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'verifierName': instance.verifierName,
      'verifierURL': instance.verifierURL,
      'submitAt': instance.submitAt.toIso8601String(),
      'isSuccess': instance.isSuccess,
      'idToken': instance.idToken,
      'vpToken': instance.vpToken,
      'presentationSubmission': instance.presentationSubmission,
      'message': instance.message,
    };
