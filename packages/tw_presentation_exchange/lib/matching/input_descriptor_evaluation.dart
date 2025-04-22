import 'package:tw_presentation_exchange/matching/candidate_field.dart';
import 'package:tw_presentation_exchange/presentation_definitions/field.dart';

abstract class InputDescriptorEvaluation {
  InputDescriptorEvaluation();

  factory InputDescriptorEvaluation.candidateClaim({required Map<Field, CandidateField> matches}) =>
      InputDescriptorEvaluationCandidateClaim(matches: matches);
  factory InputDescriptorEvaluation.notMatchingClaim() => InputDescriptorEvaluationNotMatchingClaim();
  factory InputDescriptorEvaluation.notMatchedFieldConstraints() =>
      InputDescriptorEvaluationNotMatchedFieldConstraints();
  factory InputDescriptorEvaluation.unsupportedFormat() => InputDescriptorEvaluationUnsupportedFormat();

  String get description;
}

class InputDescriptorEvaluationCandidateClaim extends InputDescriptorEvaluation {
  InputDescriptorEvaluationCandidateClaim({required this.matches});

  final Map<Field, CandidateField> matches;

  @override
  String get description =>
      'Matched ${matches.entries.map((e) => 'Field no:${e.key} was matched ${e.value.description}').join(', ')}';
}

class InputDescriptorEvaluationNotMatchingClaim extends InputDescriptorEvaluation {
  @override
  String get description => 'Not matched';
}

class InputDescriptorEvaluationNotMatchedFieldConstraints extends InputDescriptorEvaluation {
  @override
  String get description => 'Not matched field constraints';
}

class InputDescriptorEvaluationUnsupportedFormat extends InputDescriptorEvaluation {
  @override
  String get description => 'Unsupported format';
}
