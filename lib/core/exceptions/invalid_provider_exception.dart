class InvalidProviderException implements Exception {
  const InvalidProviderException();

  @override
  String toString() {
    return 'InvalidProviderExtension: provider is not Provider or AutoDisposeProvider';
  }
}
