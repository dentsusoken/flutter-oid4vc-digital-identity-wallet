// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_descriptor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InputDescriptor _$InputDescriptorFromJson(
  Map<String, dynamic> json,
) => _InputDescriptor(
  id: json['id'] as String,
  name: json['name'] as String?,
  purpose: json['purpose'] as String?,
  formatContainer:
      json['format'] == null
          ? null
          : FormatContainer.fromJson(json['format'] as Map<String, dynamic>),
  constraints:
      json['constraints'] == null
          ? null
          : Constraints.fromJson(json['constraints'] as Map<String, dynamic>),
  groups: (json['group'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$InputDescriptorToJson(_InputDescriptor instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'purpose': instance.purpose,
      'format': instance.formatContainer,
      'constraints': instance.constraints,
      'group': instance.groups,
    };
