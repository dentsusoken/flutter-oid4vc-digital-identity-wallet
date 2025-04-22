import 'package:cbor/cbor.dart';
import 'package:tw_iso18013_data_model/cbor_encodable.dart';
import 'package:tw_iso18013_data_model/extensions/extensions.dart';

import 'package:tw_iso18013_data_model/issuer_auths/key_authorizations.dart';
import 'package:tw_iso18013_data_model/tw_iso18013_data_model.dart';
import 'package:tw_iso18013_data_model/types.dart';

typedef AuthorizedNameSpaces = List<NameSpace>;
typedef DataElementsArray = List<DataElementIdentifier>;
typedef AuthorizedDataElements = Map<NameSpace, DataElementsArray>;

class DeviceKeyInfo extends CborEncodable {
  DeviceKeyInfo({required this.deviceKey, this.keyAuthorizations, this.keyInfo});

  final CoseKey deviceKey;
  final KeyAuthorizations? keyAuthorizations;
  final CborValue? keyInfo;

  @override
  CborValue toCBOR() {
    return CborMap({
      _Keys.deviceKey.key: deviceKey.toCBOR(),
      if (keyAuthorizations != null) _Keys.keyAuthorizations.key: keyAuthorizations!.toCBOR(),
      if (keyInfo != null) _Keys.keyInfo.key: keyInfo!,
    });
  }

  static DeviceKeyInfo? fromCBOR(CborValue? cbor) {
    if (cbor is! CborMap) {
      return null;
    }

    final cdk = cbor[_Keys.deviceKey.key];
    if (cdk == null) {
      return null;
    }

    final dk = CoseKey.fromCBOR(cdk);
    if (dk == null) {
      return null;
    }

    KeyAuthorizations? ka;
    final cka = cbor[_Keys.keyAuthorizations.key];
    if (cka != null) {
      ka = KeyAuthorizations.fromCBOR(cka);
    }

    return DeviceKeyInfo(deviceKey: dk, keyAuthorizations: ka, keyInfo: cbor[_Keys.keyInfo.key]);
  }
}

enum _Keys { deviceKey, keyAuthorizations, keyInfo }
