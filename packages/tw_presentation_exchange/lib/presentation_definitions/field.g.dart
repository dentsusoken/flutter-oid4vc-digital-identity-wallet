// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Field _$FieldFromJson(Map<String, dynamic> json) => _Field(
  paths: (json['path'] as List<dynamic>).map((e) => e as String).toList(),
  filter: json['filter'] as Map<String, dynamic>?,
  purpose: json['purpose'] as String?,
  intentToRetain: json['intent_to_retain'] as bool?,
  optional: json['optional'] as bool?,
);

Map<String, dynamic> _$FieldToJson(_Field instance) => <String, dynamic>{
  'path': instance.paths,
  'filter': instance.filter,
  'purpose': instance.purpose,
  'intent_to_retain': instance.intentToRetain,
  'optional': instance.optional,
};
