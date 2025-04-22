import 'package:tw_presentation_exchange/matching/matcher.dart';

abstract class Match {
  Match();

  factory Match.matched({required InputDescriptorEvaluationPerClaim matches}) => MatchMatched(matches: matches);
  factory Match.notMatched({required InputDescriptorEvaluationPerClaim details}) => MatchNotMatched(details: details);
}

class MatchMatched extends Match {
  MatchMatched({required this.matches});

  final InputDescriptorEvaluationPerClaim matches;
}

class MatchNotMatched extends Match {
  MatchNotMatched({required this.details});

  final InputDescriptorEvaluationPerClaim details;
}
