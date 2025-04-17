import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:tw_crypto/ec_curve_type.dart';
import 'package:tw_crypto/private_key_type.dart';

import 'tw_crypto_platform.dart';

/// An implementation of [TwCryptoPlatform] that uses method channels.
class TwCryptoMethodChannel extends TwCryptoPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('com.dentsusoken.TrustedWeb.DigitalWallet/tw_crypto');

  @override
  Future<Uint8List> createPrivateKey(PrivateKeyType keyType) async {
    final ret = await methodChannel.invokeMethod<Uint8List>('createPrivateKey', {'keyType': keyType.value});
    return ret!;
  }

  @override
  Future<String> getPublicKeyPEM(PrivateKeyType keyType, Uint8List privateKey) async {
    final ret = await methodChannel.invokeMethod<String>('getPublicKeyPEM', {
      'keyType': keyType.value,
      'keyData': privateKey,
    });
    return ret!;
  }

  @override
  Future<Uint8List> getPrivateKeyX963(PrivateKeyType keyType, Uint8List privateKey) async {
    final ret = await methodChannel.invokeMethod<Uint8List>('getPrivateKeyX963', {
      'keyType': keyType.value,
      'keyData': privateKey,
    });
    return ret!;
  }

  @override
  Future<Uint8List> getCrvPrivateKeyX963(ECCurveType crv) async {
    final ret = await methodChannel.invokeMethod<Uint8List>('getCrvPrivateKeyX963', {'crv': crv.value});
    return ret!;
  }
}
