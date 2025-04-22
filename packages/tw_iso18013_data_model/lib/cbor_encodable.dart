import 'package:cbor/cbor.dart';

abstract class CborEncodable {
  CborValue toCBOR();
}
