import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_presentation_exchange/presentation_definitions/presentation_aliases.dart';
import 'package:tw_presentation_exchange/presentation_definitions/rule.dart';

part 'submission_requirement.freezed.dart';
part 'submission_requirement.g.dart';

@freezed
abstract class SubmissionRequirement with _$SubmissionRequirement {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory SubmissionRequirement({
    required Rule rule,
    int? count,
    int? min,
    int? max,
    Group? from,
    List<SubmissionRequirement>? formNested,
    Name? name,
    Purpose? purpose,
  }) = _SubmissionRequirement;
  factory SubmissionRequirement.fromJson(Map<String, dynamic> json) => _$SubmissionRequirementFromJson(json);
}
