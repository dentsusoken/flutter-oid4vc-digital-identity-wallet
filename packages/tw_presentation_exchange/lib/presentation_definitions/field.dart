import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_presentation_exchange/types.dart';

part 'field.freezed.dart';
part 'field.g.dart';

@freezed
abstract class Field with _$Field {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory Field({
    @JsonKey(name: 'path') required List<String> paths,
    Json? filter,
    String? purpose,
    @JsonKey(name: 'intent_to_retain') bool? intentToRetain,
    bool? optional,
  }) = _Field;

  factory Field.fromJson(Map<String, dynamic> json) => _$FieldFromJson(json);
}
