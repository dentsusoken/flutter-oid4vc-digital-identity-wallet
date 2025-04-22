// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'presentation_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PresentationDefinitionContainer _$PresentationDefinitionContainerFromJson(
  Map<String, dynamic> json,
) => _PresentationDefinitionContainer(
  comment: json['comment'] as String?,
  definition: PresentationDefinition.fromJson(
    json['definition'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$PresentationDefinitionContainerToJson(
  _PresentationDefinitionContainer instance,
) => <String, dynamic>{
  'comment': instance.comment,
  'definition': instance.definition,
};

_PresentationDefinition _$PresentationDefinitionFromJson(
  Map<String, dynamic> json,
) => _PresentationDefinition(
  id: json['id'] as String,
  name: json['name'] as String?,
  purpose: json['purpose'] as String?,
  formatContainer:
      json['format'] == null
          ? null
          : FormatContainer.fromJson(json['format'] as Map<String, dynamic>),
  inputDescriptors:
      (json['inputDescriptors'] as List<dynamic>)
          .map((e) => InputDescriptor.fromJson(e as Map<String, dynamic>))
          .toList(),
  submissionRequirements:
      (json['submissionRequirements'] as List<dynamic>?)
          ?.map(
            (e) => SubmissionRequirement.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
);

Map<String, dynamic> _$PresentationDefinitionToJson(
  _PresentationDefinition instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'purpose': instance.purpose,
  'format': instance.formatContainer,
  'inputDescriptors': instance.inputDescriptors,
  'submissionRequirements': instance.submissionRequirements,
};
