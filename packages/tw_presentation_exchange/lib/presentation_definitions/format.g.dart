// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'format.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FormatContainer _$FormatContainerFromJson(Map<String, dynamic> json) =>
    _FormatContainer(
      formats:
          (json['formats'] as List<dynamic>)
              .map((e) => e as Map<String, dynamic>)
              .toList(),
    );

Map<String, dynamic> _$FormatContainerToJson(_FormatContainer instance) =>
    <String, dynamic>{'formats': instance.formats};
