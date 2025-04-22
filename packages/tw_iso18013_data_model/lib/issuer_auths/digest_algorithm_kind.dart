enum DigestAlgorithmKind {
  sha256('SHA-256'),
  sha384('SHA-384'),
  sha512('SHA-512');

  const DigestAlgorithmKind(this.value);

  factory DigestAlgorithmKind.from(String value) {
    switch (value) {
      case 'SHA-256':
        return DigestAlgorithmKind.sha256;
      case 'SHA-384':
        return DigestAlgorithmKind.sha384;
      case 'SHA-512':
        return DigestAlgorithmKind.sha512;
      default:
        throw ArgumentError.value(value, 'value', 'Invalid value');
    }
  }

  final String value;
}
