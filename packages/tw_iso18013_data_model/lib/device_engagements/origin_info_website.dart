import 'package:cbor/cbor.dart';
import 'package:tw_iso18013_data_model/cbor_encodable.dart';

class OriginInfoWebsite extends CborEncodable {
  OriginInfoWebsite({required this.mCat, required this.mBaseUrl});

  final int mCat;
  final String mBaseUrl;

  static const engagementVersion11 = '1.1';
  // * The constant used to specify how the current engagement structure is delivered.
  static const catDelivery = 0;
  // * The constant used to specify how the other party engagement structure has been received.
  static const catReceive = 1;
  static const type = 100;

  static OriginInfoWebsite? fromCBOR(CborValue obj) {
    if (obj is! CborMap) {
      return null;
    }

    final map = obj.toObject() as Map;
    final cat = map[_Keys.cat.value];
    if (cat is! int) {
      return null;
    }

    final type = map[_Keys.type.value];
    if (type is! int || type != OriginInfoWebsite.type) {
      return null;
    }

    final details = map[_Keys.details.value];
    if (details is! Map) {
      return null;
    }

    final baseUrl = details[_Keys.baseUrl.value];
    if (baseUrl is! String) {
      return null;
    }

    return OriginInfoWebsite(mCat: cat, mBaseUrl: baseUrl);
  }

  @override
  CborValue toCBOR() => CborValue({
    _Keys.cat.value: mCat,
    _Keys.type.value: type,
    _Keys.details.value: {_Keys.baseUrl.value: mBaseUrl},
  });
}

enum _Keys {
  cat('cat'),
  type('type'),
  details('Details'),
  baseUrl('baseUrl');

  const _Keys(this.value);
  final String value;
}
