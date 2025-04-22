// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submission_requirement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubmissionRequirement _$SubmissionRequirementFromJson(
  Map<String, dynamic> json,
) => _SubmissionRequirement(
  rule: $enumDecode(_$RuleEnumMap, json['rule']),
  count: (json['count'] as num?)?.toInt(),
  min: (json['min'] as num?)?.toInt(),
  max: (json['max'] as num?)?.toInt(),
  from: json['from'] as String?,
  formNested:
      (json['formNested'] as List<dynamic>?)
          ?.map(
            (e) => SubmissionRequirement.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  name: json['name'] as String?,
  purpose: json['purpose'] as String?,
);

Map<String, dynamic> _$SubmissionRequirementToJson(
  _SubmissionRequirement instance,
) => <String, dynamic>{
  'rule': _$RuleEnumMap[instance.rule]!,
  'count': instance.count,
  'min': instance.min,
  'max': instance.max,
  'from': instance.from,
  'formNested': instance.formNested,
  'name': instance.name,
  'purpose': instance.purpose,
};

const _$RuleEnumMap = {Rule.all: 'all', Rule.pick: 'pick', Rule.none: 'none'};
