import 'package:tw_iso18013_data_model/mdoc_known_doc_types/name_image.dart';
import 'package:tw_iso18013_data_model/mdoc_known_doc_types/name_value.dart';
import 'package:tw_iso18013_data_model/types.dart';

import 'package:tw_iso18013_data_model/device_engagements/device_engagements.dart';
import 'package:tw_iso18013_data_model/mdoc_responses/mdoc_response.dart';

class GenericMdocModel {
  GenericMdocModel({
    required this.id,
    required this.createdAt,
    this.issuerSigned,
    this.devicePrivateKey,
    required this.docType,
    this.nameSpaces,
    this.displayName,
    this.modifiedAt,
    this.statusDescription,
    required this.ageOverXX,
    required this.displayStrings,
    required this.displayImages,
    required this.mandatoryElementKeys,
  });

  final String id;
  final DateTime createdAt;
  final IssuerSigned? issuerSigned;
  final CoseKeyPrivate? devicePrivateKey;
  final String docType;
  final List<NameSpace>? nameSpaces;
  final String? displayName;
  final DateTime? modifiedAt;
  final String? statusDescription;
  final Map<int, bool> ageOverXX;
  final List<NameValue> displayStrings;
  final List<NameImage> displayImages;
  final List<DataElementIdentifier> mandatoryElementKeys;
}
