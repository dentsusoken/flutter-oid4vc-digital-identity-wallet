import 'package:tw_iso18013_data_model/types.dart';

import 'package:tw_iso18013_data_model/mdoc_responses/device_signed.dart';
import 'package:tw_iso18013_data_model/mdoc_responses/errors.dart';
import 'package:tw_iso18013_data_model/mdoc_responses/issuer_signed.dart';

class Mdoc {
  Mdoc({required this.docType, required this.issuerSigned, this.deviceSigned, this.errors});

  final DocType docType;
  final IssuerSigned issuerSigned;
  final DeviceSigned? deviceSigned;
  final Errors? errors;
}
