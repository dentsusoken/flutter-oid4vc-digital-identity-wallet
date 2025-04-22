import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_crypto/tw_crypto.dart';

import 'package:tw_wallet_storage/data_json_converter.dart';

part 'private_key.freezed.dart';
part 'private_key.g.dart';

@freezed
abstract class PrivateKey with _$PrivateKey {
  factory PrivateKey({required PrivateKeyType type, @DataJsonConverter() required Uint8List value}) = _PrivateKey;
  factory PrivateKey.fromJson(Map<String, dynamic> json) => _$PrivateKeyFromJson(json);

  static Future<PrivateKey> create({PrivateKeyType type = PrivateKeyType.secureEnclaveP256, Uint8List? value}) async {
    value ??= await TwCrypto.createPrivateKey(type);

    return PrivateKey(type: type, value: value);
  }
}
