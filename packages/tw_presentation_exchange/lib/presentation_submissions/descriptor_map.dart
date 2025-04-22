import 'package:freezed_annotation/freezed_annotation.dart';

part 'descriptor_map.freezed.dart';
part 'descriptor_map.g.dart';

@freezed
abstract class DescriptorMap with _$DescriptorMap {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory DescriptorMap({required String id, required String format, required String path}) = _DescriptorMap;
  factory DescriptorMap.fromJson(Map<String, dynamic> json) => _$DescriptorMapFromJson(json);
}
