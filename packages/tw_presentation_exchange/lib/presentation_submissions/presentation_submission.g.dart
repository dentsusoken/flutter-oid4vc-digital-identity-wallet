// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'presentation_submission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PresentationSubmissionContainer _$PresentationSubmissionContainerFromJson(
  Map<String, dynamic> json,
) => _PresentationSubmissionContainer(
  submission: PresentationSubmission.fromJson(
    json['presentation_submission'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$PresentationSubmissionContainerToJson(
  _PresentationSubmissionContainer instance,
) => <String, dynamic>{'presentation_submission': instance.submission};

_PresentationSubmission _$PresentationSubmissionFromJson(
  Map<String, dynamic> json,
) => _PresentationSubmission(
  id: json['id'] as String,
  definitionID: json['definition_id'] as String,
  descriptorMap:
      (json['descriptorMap'] as List<dynamic>)
          .map((e) => DescriptorMap.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$PresentationSubmissionToJson(
  _PresentationSubmission instance,
) => <String, dynamic>{
  'id': instance.id,
  'definition_id': instance.definitionID,
  'descriptorMap': instance.descriptorMap,
};
