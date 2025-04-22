// ignore_for_file: avoid_manual_providers_as_generated_provider_dependency, avoid_public_notifier_properties
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'shared_preferences_provider.g.dart';

enum SharedPreferencesKey { biometryEnabled, cachedDeepLink, runAtLeastOnce, language }

final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError();
});

@riverpod
class SharedPreferencesController extends _$SharedPreferencesController {
  SharedPreferences get _sharedPreferences => ref.read(sharedPreferencesProvider);

  @override
  void build() {}

  bool get biometryEnabled => _sharedPreferences.getBool(SharedPreferencesKey.biometryEnabled.name) ?? false;

  set biometryEnabled(bool value) => _sharedPreferences.setBool(SharedPreferencesKey.biometryEnabled.name, value);

  Uri? get cachedDeepLink {
    final cachedDeepLink = _sharedPreferences.getString(SharedPreferencesKey.cachedDeepLink.name);
    if (cachedDeepLink == null) {
      return null;
    }

    return Uri.parse(cachedDeepLink);
  }

  set cachedDeepLink(Uri? value) {
    if (value == null) {
      remove(SharedPreferencesKey.cachedDeepLink);
    } else {
      _sharedPreferences.setString(SharedPreferencesKey.cachedDeepLink.name, value.toString());
    }
  }

  String get language => _sharedPreferences.getString(SharedPreferencesKey.language.name) ?? 'ja-JP';

  set language(String value) => _sharedPreferences.setString(SharedPreferencesKey.language.name, value);

  void remove(SharedPreferencesKey key) => _sharedPreferences.remove(key.name);
}
