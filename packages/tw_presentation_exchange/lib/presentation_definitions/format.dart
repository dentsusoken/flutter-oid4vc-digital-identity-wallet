import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_presentation_exchange/types.dart';

part 'format.freezed.dart';
part 'format.g.dart';

@freezed
abstract class FormatContainer with _$FormatContainer {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory FormatContainer({required List<Json> formats}) = _FormatContainer;

  factory FormatContainer.fromJson(Map<String, dynamic> json) => _$FormatContainerFromJson(json);
}
