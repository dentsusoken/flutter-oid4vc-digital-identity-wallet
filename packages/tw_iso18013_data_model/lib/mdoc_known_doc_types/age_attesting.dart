/// A conforming type contains age attestation values
abstract class AgeAttesting {
  Map<int, bool> get ageOverXX;
}

/// Age attestation: Nearest “true” attestation above request (7.2.5 of iso document)
extension AgeAttestingExtension on AgeAttesting {
  (int age, bool value)? isOver(int age) {
    final overTrueItems =
        ageOverXX.entries.where((e) => e.value && e.key >= age).toList()..sort((a, b) => a.key < b.key ? -1 : 1);
    var item = overTrueItems.firstOrNull;
    if (item != null) {
      return (item.key, item.value);
    }

    final overFalseItems =
        ageOverXX.entries.where((e) => e.value && e.key >= age).toList()..sort((a, b) => a.key > b.key ? -1 : 1);
    item = overFalseItems.firstOrNull;
    if (item != null) {
      return (item.key, item.value);
    }

    return null;
  }

  Map<int, bool> max2AgesOver(List<int> ages) {
    if (ages.length <= 2) {
      return {for (final age in ages) age: true};
    }

    final sortedAges = ages..sort();
    final result = {for (final age in sortedAges) age: false};
    var numAges = 0;

    for (final age in sortedAges) {
      if (isOver(age) != null) {
        numAges++;
        result[age] = true;

        if (numAges == 2) {
          break;
        }
      }
    }

    return result;
  }

  List<int> max2AgesOverFiltered(List<int> ages) {
    final filtered =
        max2AgesOver(ages).entries.where((entry) => entry.value).map((entry) => entry.key).toList()..sort();
    return filtered;
  }
}
