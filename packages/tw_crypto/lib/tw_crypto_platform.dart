import 'dart:typed_data';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:tw_crypto/ec_curve_type.dart';
import 'package:tw_crypto/private_key_type.dart';

import 'tw_crypto_method_channel.dart';

abstract class TwCryptoPlatform extends PlatformInterface {
  /// Constructs a TwCryptoPlatform.
  TwCryptoPlatform() : super(token: _token);

  static final Object _token = Object();

  static TwCryptoPlatform _instance = TwCryptoMethodChannel();

  /// The default instance of [TwCryptoPlatform] to use.
  ///
  /// Defaults to [TwCryptoMethodChannel].
  static TwCryptoPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [TwCryptoPlatform] when
  /// they register themselves.
  static set instance(TwCryptoPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<Uint8List> createPrivateKey(PrivateKeyType keyType) {
    throw UnimplementedError('createPrivateKey() has not been implemented.');
  }

  Future<String> getPublicKeyPEM(PrivateKeyType keyType, Uint8List privateKey) {
    throw UnimplementedError('getPublicKeyPEM() has not been implemented.');
  }

  Future<Uint8List> getPrivateKeyX963(PrivateKeyType keyType, Uint8List privateKey) {
    throw UnimplementedError('getPrivateKeyX963() has not been implemented.');
  }

  Future<Uint8List> getCrvPrivateKeyX963(ECCurveType crv) {
    throw UnimplementedError('getCrvPrivateKeyX963() has not been implemented.');
  }
}
