// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'private_key.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PrivateKeyImpl _$$PrivateKeyImplFromJson(Map<String, dynamic> json) =>
    _$PrivateKeyImpl(
      type: $enumDecode(_$PrivateKeyTypeEnumMap, json['type']),
      value: const DataJsonConverter().fromJson(json['value'] as String),
    );

Map<String, dynamic> _$$PrivateKeyImplToJson(_$PrivateKeyImpl instance) =>
    <String, dynamic>{
      'type': _$PrivateKeyTypeEnumMap[instance.type]!,
      'value': const DataJsonConverter().toJson(instance.value),
    };

const _$PrivateKeyTypeEnumMap = {
  PrivateKeyType.derEncodedP256: 'derEncodedP256',
  PrivateKeyType.pemStringDataP256: 'pemStringDataP256',
  PrivateKeyType.x963EncodedP256: 'x963EncodedP256',
  PrivateKeyType.secureEnclaveP256: 'secureEnclaveP256',
};
