import 'package:tw_presentation_exchange/claims/claims.dart';
import 'package:tw_presentation_exchange/matching/input_descriptor_evaluation.dart';
import 'package:tw_presentation_exchange/presentation_definitions/presentation_definitions.dart';

typedef ClaimsEvaluation = Map<ClaimId, Map<InputDescriptorId, InputDescriptorEvaluation>>;
typedef InputDescriptorEvaluationPerClaim = Map<InputDescriptorId, Map<ClaimId, InputDescriptorEvaluation>>;

abstract class EvaluatorType {
  Match evaluate({
    required PresentationDefinition definition,
    required InputDescriptorEvaluationPerClaim candidateClaims,
    required InputDescriptorEvaluationPerClaim notMatchingClaims,
  });
}

abstract class PresentationMatcherType {
  Match match({required PresentationDefinition definition, required List<Claim> claims});
}

class PresentationMatcher implements PresentationMatcherType, EvaluatorType {
  @override
  Match evaluate({
    required PresentationDefinition definition,
    required InputDescriptorEvaluationPerClaim candidateClaims,
    required InputDescriptorEvaluationPerClaim notMatchingClaims,
  }) {
    // TODO: implement match
    throw UnimplementedError();
  }

  @override
  Match match({required PresentationDefinition definition, required List<Claim> claims}) {
    // TODO: implement match
    throw UnimplementedError();
  }
}
