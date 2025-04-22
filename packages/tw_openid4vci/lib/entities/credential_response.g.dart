// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credential_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CredentialResponse _$CredentialResponseFromJson(Map<String, dynamic> json) =>
    _CredentialResponse(
      credential: json['credential'] as String,
      cNonce: json['c_nonce'] as String,
      cNonceExpiresIn: (json['c_nonce_expires_in'] as num).toInt(),
    );

Map<String, dynamic> _$CredentialResponseToJson(_CredentialResponse instance) =>
    <String, dynamic>{
      'credential': instance.credential,
      'c_nonce': instance.cNonce,
      'c_nonce_expires_in': instance.cNonceExpiresIn,
    };
