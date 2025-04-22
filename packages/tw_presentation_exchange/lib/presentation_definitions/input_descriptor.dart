import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_presentation_exchange/presentation_definitions/constraints.dart';
import 'package:tw_presentation_exchange/presentation_definitions/format.dart';
import 'package:tw_presentation_exchange/presentation_definitions/presentation_aliases.dart';

part 'input_descriptor.freezed.dart';
part 'input_descriptor.g.dart';

@freezed
abstract class InputDescriptor with _$InputDescriptor {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory InputDescriptor({
    required InputDescriptorId id,
    Name? name,
    Purpose? purpose,
    @JsonKey(name: 'format') FormatContainer? formatContainer,
    Constraints? constraints,
    @JsonKey(name: 'group') List<Group>? groups,
  }) = _InputDescriptor;

  factory InputDescriptor.fromJson(Map<String, dynamic> json) => _$InputDescriptorFromJson(json);
}
