import 'dart:typed_data';

import 'package:cbor/cbor.dart';

import 'package:tw_iso18013_data_model/mdoc_responses/mdoc.dart';
import 'package:tw_iso18013_data_model/mdoc_responses/mdoc_error.dart';

class DeviceResponse {
  DeviceResponse({this.version = defaultVersion, this.documents, this.errors, required this.status});

  final String version;
  final List<Mdoc>? documents;
  final List<MdocError>? errors;
  final int status;

  static const defaultVersion = '1.0';

  static DeviceResponse? fromCBOR(CborValue? value) {
    return null;
  }

  static DeviceResponse? fromJson(Uint8List uint8list) {
    return null;
  }

  CborValue toCBOR() {
    // TODO(Maku): implement toCBOR
    throw UnimplementedError();
  }
}
