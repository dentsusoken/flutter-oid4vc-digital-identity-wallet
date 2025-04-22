// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'constraints.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Constraints _$ConstraintsFromJson(Map<String, dynamic> json) => _Constraints(
  fields:
      (json['fields'] as List<dynamic>)
          .map((e) => Field.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$ConstraintsToJson(_Constraints instance) =>
    <String, dynamic>{'fields': instance.fields};
