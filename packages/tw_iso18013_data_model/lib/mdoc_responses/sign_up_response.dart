import 'dart:typed_data';

import 'package:tw_iso18013_data_model/mdoc_responses/device_response.dart';
import 'package:tw_iso18013_data_model/device_engagements/cose_key_private.dart';

class SignUpResponse {
  SignUpResponse({this.response, this.pin, this.privateKey});

  String? response;
  String? pin;
  String? privateKey;

  /// Device response decoded from base64-encoded string
  DeviceResponse? get deviceResponse {
    return response != null ? DeviceResponse.fromJson(Uint8List.fromList(response!.codeUnits)) : null;
  }

  /// Device private key decoded from base64-encoded string
  CoseKeyPrivate? get devicePrivateKey {
    return privateKey != null ? CoseKeyPrivate.fromBase64(privateKey!) : null;
  }

  static SignUpResponse? fromJson(Uint8List data) {
    return SignUpResponse();
  }
}
