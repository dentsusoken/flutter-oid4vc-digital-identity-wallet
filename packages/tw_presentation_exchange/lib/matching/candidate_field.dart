abstract class CandidateField {
  const CandidateField();

  String get description;

  factory CandidateField.fieldNotFound() => CandidateFieldRequiredFieldNotFound();
  factory CandidateField.fieldOptionalNotFound() => CandidateFieldOptionalFieldNotFound();
  factory CandidateField.fieldFound({required String path, required String content}) =>
      CandidateFieldFound(path: path, content: content);
  factory CandidateField.fieldPredicateEvaluated({required String path, required bool predicateEvaluation}) =>
      CandidateFieldPredicateEvaluated(path: path, predicateEvaluation: predicateEvaluation);
}

class CandidateFieldRequiredFieldNotFound extends CandidateField {
  @override
  String get description => 'required not present';
}

class CandidateFieldOptionalFieldNotFound extends CandidateField {
  @override
  String get description => 'not present but was optional';
}

class CandidateFieldFound extends CandidateField {
  CandidateFieldFound({required this.path, required this.content});

  final String path;
  final String content;

  @override
  String get description => 'in path $path with content $content';
}

class CandidateFieldPredicateEvaluated extends CandidateField {
  CandidateFieldPredicateEvaluated({required this.path, required this.predicateEvaluation});

  final String path;
  final bool predicateEvaluation;

  @override
  String get description => "in path $path predicated evaluated to $predicateEvaluation";
}
