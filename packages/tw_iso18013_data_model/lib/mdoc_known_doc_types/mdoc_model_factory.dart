import 'package:tw_iso18013_data_model/mdoc_known_doc_types/mdoc_decodable.dart';

import 'package:tw_iso18013_data_model/device_engagements/device_engagements.dart';
import 'package:tw_iso18013_data_model/mdoc_responses/mdoc_response.dart';

abstract class MdocModelFactory {
  MdocDecodable? makeMdocDecodable({
    required String id,
    required DateTime createdAt,
    required IssuerSigned issuerSigned,
    required CoseKeyPrivate devicePrivateKey,
    required String docType,
    String? displayName,
    String? statusDescription,
  });
}
