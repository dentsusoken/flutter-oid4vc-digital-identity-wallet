import 'dart:typed_data';

import 'package:cbor/cbor.dart';
import 'package:recase/recase.dart';
import 'package:tw_iso18013_data_model/cbor_encodable.dart';

extension CborEncodableExtension on CborEncodable {
  Uint8List encode() {
    return Uint8List.fromList(cborEncode(toCBOR()));
  }

  CborValue get taggedEncoded {
    return CborString.fromUtf8(encode(), tags: [CborTag.encodedCborData]);
  }
}

extension CborValueExtension on CborValue {
  bool hasTag(int tag) {
    return tags.contains(tag);
  }

  Uint8List? decodeTaggedBytes() {
    final val = this;
    if (val is! CborString || !hasTag(CborTag.encodedCborData)) {
      return null;
    }

    return Uint8List.fromList(val.utf8Bytes);
  }

  CborValue? decodeBytesString() {
    final val = this.toObject() as List<int>?;
    if (val == null) {
      return null;
    }

    final bytes = Uint8List.fromList(val);
    return cborDecode(bytes);
  }
}

extension EnumExtension on Enum {
  CborString get key => CborString(name.snakeCase);
}
