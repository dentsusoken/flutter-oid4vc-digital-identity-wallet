import 'package:tw_iso18013_data_model/mdoc_responses/mdoc_response.dart';

/// This class is used to store and manage pairs of names and their corresponding values.
/// It provides functionality for comparing instances, generating string representations for
/// debugging and display purposes, and ensuring safe concurrent access.
class NameValue {
  NameValue({required this.name, required this.value, this.ns, this.mdocDataType, this.order = 0, this.style});

  final String? ns;
  final String name;
  final String value;
  final MdocDataType? mdocDataType;
  final int order;
  final String? style;
  final List<NameValue> children = [];

  @override
  String toString() {
    return '$name: $value';
  }

  String get debugDescription {
    return "$order. ${ns ?? ""}: $name - $value";
  }

  void addChild(NameValue child) {
    children.add(child);
  }
}
