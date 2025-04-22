import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_presentation_exchange/presentation_definitions/field.dart';

part 'constraints.freezed.dart';
part 'constraints.g.dart';

@freezed
abstract class Constraints with _$Constraints {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory Constraints({required List<Field> fields}) = _Constraints;

  factory Constraints.fromJson(Map<String, dynamic> json) => _$ConstraintsFromJson(json);
}
