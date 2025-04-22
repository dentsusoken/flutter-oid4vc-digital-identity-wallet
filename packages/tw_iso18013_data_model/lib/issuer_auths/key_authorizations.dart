import 'package:cbor/cbor.dart';
import 'package:tw_iso18013_data_model/cbor_encodable.dart';
import 'package:tw_iso18013_data_model/extensions/extensions.dart';
import 'package:tw_iso18013_data_model/issuer_auths/device_key_info.dart';

class KeyAuthorizations extends CborEncodable {
  KeyAuthorizations({required this.authorizedNameSpaces, required this.authorizedDataElements});

  final AuthorizedNameSpaces? authorizedNameSpaces;
  final AuthorizedDataElements? authorizedDataElements;

  @override
  CborValue toCBOR() {
    return CborMap({
      if (authorizedNameSpaces != null)
        _Keys.nameSpaces.key: CborList.of(authorizedNameSpaces!.map((e) => CborString(e))),
      if (authorizedDataElements != null)
        _Keys.dataElements.key: CborMap.of(
          authorizedDataElements!.map(
            (key, value) => MapEntry(CborString(key), CborList.of(value.map((e) => CborString(e)))),
          ),
        ),
    });
  }

  static KeyAuthorizations? fromCBOR(CborValue? value) {
    if (value is! CborMap) {
      return null;
    }

    AuthorizedNameSpaces? ns;
    AuthorizedDataElements? de;

    final ans = value[_Keys.nameSpaces.key];

    if (ans is CborList) {
      ns = ans.whereType<CborString>().map((e) => e.toString()).toList();
    }

    final mde = value[_Keys.dataElements.key];
    if (mde is CborMap) {
      de = {};

      for (final e in mde.entries) {
        if (e.key is CborString && e.value is CborList) {
          final arr = e.value as CborList;
          final d = arr.whereType<CborString>().map((e) => e.toString()).toList();
          de[e.key.toString()] = d;
        }
      }
    }

    return KeyAuthorizations(authorizedNameSpaces: ns, authorizedDataElements: de);
  }
}

enum _Keys { nameSpaces, dataElements }
