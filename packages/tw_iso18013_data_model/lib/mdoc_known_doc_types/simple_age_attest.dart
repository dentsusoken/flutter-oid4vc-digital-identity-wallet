import 'package:tw_iso18013_data_model/mdoc_known_doc_types/age_attesting.dart';

class SimpleAgeAttest implements AgeAttesting {
  SimpleAgeAttest({required this.ageOverXX});

  factory SimpleAgeAttest.fromValues({
    required int ageOver1,
    required bool isOVer1,
    required int ageOver2,
    required bool isOVer2,
  }) {
    return SimpleAgeAttest(ageOverXX: {ageOver1: isOVer1, ageOver2: isOVer2});
  }

  factory SimpleAgeAttest.fromNamespaces() {
    return SimpleAgeAttest(ageOverXX: {});
  }

  @override
  final Map<int, bool> ageOverXX;
}
