import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_presentation_exchange/presentation_definitions/format.dart';
import 'package:tw_presentation_exchange/presentation_definitions/input_descriptor.dart';
import 'package:tw_presentation_exchange/presentation_definitions/presentation_definitions.dart';

part 'presentation_definition.freezed.dart';
part 'presentation_definition.g.dart';

/*
 Based on https://identity.foundation/presentation-exchange/
 */
@freezed
abstract class PresentationDefinitionContainer with _$PresentationDefinitionContainer {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory PresentationDefinitionContainer({
    String? comment,
    @JsonKey(name: 'definition') required PresentationDefinition definition,
  }) = _PresentationDefinitionContainer;
  factory PresentationDefinitionContainer.fromJson(Map<String, dynamic> json) =>
      _$PresentationDefinitionContainerFromJson(json);
}

@freezed
abstract class PresentationDefinition with _$PresentationDefinition {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory PresentationDefinition({
    required String id,
    Name? name,
    Purpose? purpose,
    @JsonKey(name: 'format') FormatContainer? formatContainer,
    required List<InputDescriptor> inputDescriptors,
    List<SubmissionRequirement>? submissionRequirements,
  }) = _PresentationDefinition;
  factory PresentationDefinition.fromJson(Map<String, dynamic> json) => _$PresentationDefinitionFromJson(json);
}
