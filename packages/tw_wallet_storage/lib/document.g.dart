// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentImpl _$$DocumentImplFromJson(Map<String, dynamic> json) =>
    _$DocumentImpl(
      id: json['id'] as String,
      docType: json['docType'] as String,
      data: const DataJsonConverter().fromJson(json['data'] as String),
      docDataType: $enumDecode(_$DocDataTypeEnumMap, json['docDataType']),
      createdAt: DateTime.parse(json['createdAt'] as String),
      modifiedAt: json['modifiedAt'] == null
          ? null
          : DateTime.parse(json['modifiedAt'] as String),
    );

Map<String, dynamic> _$$DocumentImplToJson(_$DocumentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'docType': instance.docType,
      'data': const DataJsonConverter().toJson(instance.data),
      'docDataType': _$DocDataTypeEnumMap[instance.docDataType]!,
      'createdAt': instance.createdAt.toIso8601String(),
      'modifiedAt': instance.modifiedAt?.toIso8601String(),
    };

const _$DocDataTypeEnumMap = {
  DocDataType.cbor: 'cbor',
  DocDataType.sjtw: 'sjtw',
  DocDataType.signupResponseJson: 'signupResponseJson',
};
