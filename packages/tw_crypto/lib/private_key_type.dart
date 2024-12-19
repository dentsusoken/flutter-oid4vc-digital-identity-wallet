/// Format of secure key
enum PrivateKeyType {
  /// DER encoded
  derEncodedP256('dep2'),

  /// PEM string encoded as utf8
  pemStringDataP256('pep2'),

  /// ANSI x9.63 representation (default)
  x963EncodedP256('x9p2'),

  /// data representation for the secure enclave
  secureEnclaveP256('sep2');

  const PrivateKeyType(this.value);

  final String value;
}
