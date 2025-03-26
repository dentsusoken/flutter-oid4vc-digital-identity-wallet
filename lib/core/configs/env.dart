import 'dart:io';

import 'package:flutter/foundation.dart';

class Env {
  const Env._();

  static const verifierApiUri = String.fromEnvironment('VERIFIER_API_URL');
  static const verifierLegalName = String.fromEnvironment('VERIFIER_LEGAL_NAME');
  static const vciIssuerUrl = String.fromEnvironment('VCI_ISSUER_URL');
  static const vciClientId = String.fromEnvironment('VCI_CLIENT_ID');
  static const vciRedirectUri = String.fromEnvironment('VCI_REDIRECT_URI');

  static bool get isRelease => kReleaseMode;
  static bool get isDebug => kDebugMode;
  static bool get isTest => Platform.environment.containsKey('FLUTTER_TEST');
  static bool get isProfile => kProfileMode;
}
