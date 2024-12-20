import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'secure_storage_provider.g.dart';

@Riverpod(keepAlive: true)
FlutterSecureStorage secureStorage(Ref ref) {
  const androidOptions = AndroidOptions(
    encryptedSharedPreferences: true,
  );

  return const FlutterSecureStorage(
    aOptions: androidOptions,
  );
}
