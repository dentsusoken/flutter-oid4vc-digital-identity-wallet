import 'dart:convert';
import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

class DataJsonConverter implements JsonConverter<Uint8List, String> {
  const DataJsonConverter();

  @override
  Uint8List fromJson(String json) {
    return const Base64Decoder().convert(json);
  }

  @override
  String toJson(Uint8List data) {
    return const Base64Encoder().convert(data);
  }
}
