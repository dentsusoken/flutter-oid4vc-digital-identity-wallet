import 'package:freezed_annotation/freezed_annotation.dart';

part 'credential_response.freezed.dart';
part 'credential_response.g.dart';

@freezed
abstract class CredentialResponse with _$CredentialResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory CredentialResponse({required String credential, required String cNonce, required int cNonceExpiresIn}) =
      _CredentialResponse;
  factory CredentialResponse.fromJson(Map<String, dynamic> json) => _$CredentialResponseFromJson(json);
}
