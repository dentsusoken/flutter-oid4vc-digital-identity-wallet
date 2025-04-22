class PresentationError extends Error {
  PresentationError({required this.message});

  factory PresentationError.invalidFormat() {
    return PresentationError(message: 'Invalid format');
  }

  factory PresentationError.invalidPresentationDefinition() {
    return PresentationError(message: 'Invalid presentation definition');
  }

  factory PresentationError.conflictingData() {
    return PresentationError(message: 'Conflicting data');
  }

  final String message;

  @override
  String toString() {
    return 'PresentationError: $message';
  }
}
