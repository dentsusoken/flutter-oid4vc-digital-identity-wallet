import 'dart:typed_data';

import 'package:cbor/cbor.dart';

import 'package:tw_iso18013_data_model/cbor_encodable.dart';
import 'package:tw_iso18013_data_model/types.dart';

class DigestIDs extends CborEncodable {
  DigestIDs({required this.digestIDs});

  final Map<DigestID, Uint8List> digestIDs;

  Uint8List? operator [](DigestID index) => digestIDs[index];

  @override
  CborValue toCBOR() {
    return CborMap(digestIDs.map((k, v) => MapEntry(CborSmallInt(k), CborString.fromUtf8(v))));
  }

  static DigestIDs? fromCBOR(CborValue? value) {
    if (value is! CborMap) {
      return null;
    }

    final digestIDs = <DigestID, Uint8List>{};
    for (final entry in value.entries) {
      final k = entry.key;
      final v = entry.value;
      if (k is CborSmallInt && v is CborString) {
        digestIDs[k.value] = Uint8List.fromList(v.utf8Bytes);
      }
    }

    if (digestIDs.isEmpty) {
      return null;
    }

    return DigestIDs(digestIDs: digestIDs);
  }
}
