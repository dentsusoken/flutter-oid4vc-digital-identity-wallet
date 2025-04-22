// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'par_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ParResponse _$ParResponseFromJson(Map<String, dynamic> json) => _ParResponse(
  expiresIn: (json['expires_in'] as num).toInt(),
  requestUri: json['request_uri'] as String,
);

Map<String, dynamic> _$ParResponseToJson(_ParResponse instance) =>
    <String, dynamic>{
      'expires_in': instance.expiresIn,
      'request_uri': instance.requestUri,
    };
