/// type of data to save in storage
enum SavedSecureStorageDataType { doc, key, log }

/// Format of document data
enum DocDataType {
  /// DeviceResponse cbor encoded
  cbor('cbor'),

  ///  sd-jwt ** not yet supported **
  sjtw('sjtw'),

  /// signupResponseJson. DeviceResponse and PrivateKey json serialized
  signupResponseJson('srjs');

  const DocDataType(this.value);

  final String value;
}
