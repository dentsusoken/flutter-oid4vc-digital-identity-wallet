/// A structure representing a request item for data transfer.
class RequestItem {
  RequestItem({required this.elementIdentifier, this.intentToRetain, this.isOptional});

  /// A unique identifier for the data element.
  /// This identifier is used to distinguish between different elements within the data transfer process.
  final String elementIdentifier;

  /// Indicates whether the mdoc verifier intends to retain the received data element
  final bool? intentToRetain;

  /// Indicates whether the data element is optional.
  /// false or nil value of the property indicates the field is required
  final bool? isOptional;
}
