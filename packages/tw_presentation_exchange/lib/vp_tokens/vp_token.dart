import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_presentation_exchange/presentation_definitions/presentation_definitions.dart';

part 'vp_token.freezed.dart';
part 'vp_token.g.dart';

@freezed
abstract class VpTokenContainer with _$VpTokenContainer {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory VpTokenContainer({required VpToken vpToken}) = _VpTokenContainer;

  factory VpTokenContainer.fromJson(Map<String, dynamic> json) => _$VpTokenContainerFromJson(json);
}

@freezed
abstract class VpToken with _$VpToken {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory VpToken({required PresentationDefinition presentationDefinition}) = _VpToken;

  factory VpToken.fromJson(Map<String, dynamic> json) => _$VpTokenFromJson(json);
}
