import 'dart:typed_data';

import 'package:tw_crypto/ec_curve_type.dart';

import 'private_key_type.dart';
import 'tw_crypto_platform.dart';

export 'private_key_type.dart';
export 'ec_curve_type.dart';

class TwLibCrypto {
  static Future<Uint8List> createPrivateKey(PrivateKeyType keyType) {
    return TwLibCryptoPlatform.instance.createPrivateKey(keyType);
  }

  static Future<String> getPublicKeyPEM(
    PrivateKeyType keyType,
    Uint8List privateKey,
  ) {
    return TwLibCryptoPlatform.instance.getPublicKeyPEM(keyType, privateKey);
  }

  static Future<Uint8List> getPrivateKeyX963(
    PrivateKeyType keyType,
    Uint8List privateKey,
  ) {
    return TwLibCryptoPlatform.instance.getPrivateKeyX963(keyType, privateKey);
  }

  static Future<Uint8List> createPrivateKeyCrv(ECCurveType crv) {
    return TwLibCryptoPlatform.instance.getCrvPrivateKeyX963(crv);
  }
}
