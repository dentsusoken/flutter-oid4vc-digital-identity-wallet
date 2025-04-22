// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vp_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VpTokenContainer _$VpTokenContainerFromJson(Map<String, dynamic> json) =>
    _VpTokenContainer(
      vpToken: VpToken.fromJson(json['vpToken'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VpTokenContainerToJson(_VpTokenContainer instance) =>
    <String, dynamic>{'vpToken': instance.vpToken};

_VpToken _$VpTokenFromJson(Map<String, dynamic> json) => _VpToken(
  presentationDefinition: PresentationDefinition.fromJson(
    json['presentationDefinition'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$VpTokenToJson(_VpToken instance) => <String, dynamic>{
  'presentationDefinition': instance.presentationDefinition,
};
