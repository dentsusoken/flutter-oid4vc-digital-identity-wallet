class InvalidRefException implements Exception {
  const InvalidRefException();

  @override
  String toString() {
    return 'InvalidRefException: ref should be Ref or WidgetRef';
  }
}
