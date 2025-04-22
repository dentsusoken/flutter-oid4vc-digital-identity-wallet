import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_response.freezed.dart';
part 'token_response.g.dart';

@freezed
abstract class TokenResponse with _$TokenResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory TokenResponse({required String code}) = _TokenResponse;
  factory TokenResponse.fromJson(Map<String, dynamic> json) => _$TokenResponseFromJson(json);
}
