import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_presentation_exchange/presentation_submissions/descriptor_map.dart';

part 'presentation_submission.freezed.dart';
part 'presentation_submission.g.dart';

/**
 Based on https://identity.foundation/presentation-exchange/
 */
@freezed
abstract class PresentationSubmissionContainer with _$PresentationSubmissionContainer {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory PresentationSubmissionContainer({
    @JsonKey(name: "presentation_submission") required PresentationSubmission submission,
  }) = _PresentationSubmissionContainer;

  factory PresentationSubmissionContainer.fromJson(Map<String, dynamic> json) =>
      _$PresentationSubmissionContainerFromJson(json);
}

@freezed
abstract class PresentationSubmission with _$PresentationSubmission {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory PresentationSubmission({
    required String id,
    @JsonKey(name: "definition_id") required String definitionID,
    required List<DescriptorMap> descriptorMap,
  }) = _PresentationSubmission;

  factory PresentationSubmission.fromJson(Map<String, dynamic> json) => _$PresentationSubmissionFromJson(json);
}
