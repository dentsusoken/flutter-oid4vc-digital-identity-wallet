import 'package:cbor/cbor.dart';

import 'package:tw_iso18013_data_model/cbor_encodable.dart';
import 'package:tw_iso18013_data_model/issuer_auths/digest_ids.dart';
import 'package:tw_iso18013_data_model/types.dart';

class ValueDigests extends CborEncodable {
  ValueDigests({required this.valueDigests});

  final Map<NameSpace, DigestIDs> valueDigests;

  DigestIDs? operator [](NameSpace nameSpace) => valueDigests[nameSpace];

  @override
  CborValue toCBOR() {
    return CborMap({for (final entry in valueDigests.entries) CborString(entry.key): entry.value.toCBOR()});
  }

  static ValueDigests? fromCBOR(CborValue? value) {
    if (value is! CborMap) {
      return null;
    }

    final valueDigests = <NameSpace, DigestIDs>{};

    for (final entry in value.entries) {
      final k = entry.key;
      final v = entry.value;

      if (k is! CborString || v is! CborMap) {
        continue;
      }

      final ns = k.toString();

      final digestIDs = DigestIDs.fromCBOR(k);
      if (digestIDs == null) {
        return null;
      }

      valueDigests[ns] = digestIDs;
    }

    if (valueDigests.isEmpty) {
      return null;
    }

    return ValueDigests(valueDigests: valueDigests);
  }
}
