import 'package:freezed_annotation/freezed_annotation.dart';

part 'par_response.freezed.dart';
part 'par_response.g.dart';

@freezed
abstract class ParResponse with _$ParResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory ParResponse({required int expiresIn, required String requestUri}) = _ParResponse;

  factory ParResponse.fromJson(Map<String, dynamic> json) => _$ParResponseFromJson(json);
}
