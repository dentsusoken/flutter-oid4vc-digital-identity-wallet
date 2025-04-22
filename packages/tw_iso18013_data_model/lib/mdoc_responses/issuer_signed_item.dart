import 'dart:typed_data';

import 'package:tw_iso18013_data_model/types.dart';

class IssuerSignedItem {
  IssuerSignedItem({
    required this.digestId,
    required this.random,
    required this.dataElementIdentifier,
    required this.dataElementValue,
    this.rawData,
  });

  final int digestId;
  final Uint8List random;
  final DataElementIdentifier dataElementIdentifier;
  final DataElementValue dataElementValue;
  final Uint8List? rawData;
}
