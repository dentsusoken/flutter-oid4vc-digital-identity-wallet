// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'private_key.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PrivateKey _$PrivateKeyFromJson(Map<String, dynamic> json) => _PrivateKey(
  type: $enumDecode(_$PrivateKeyTypeEnumMap, json['type']),
  value: const DataJsonConverter().fromJson(json['value'] as String),
);

Map<String, dynamic> _$PrivateKeyToJson(_PrivateKey instance) =>
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
