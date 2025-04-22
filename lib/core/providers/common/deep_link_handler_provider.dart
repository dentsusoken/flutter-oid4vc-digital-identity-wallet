import 'package:digital_wallet/core/configs/env.dart';
import 'package:digital_wallet/core/providers/providers.dart';
import 'package:flutter_launcher_icons/config/config.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:url_launcher/url_launcher.dart';

part 'deep_link_handler_provider.g.dart';

abstract class DeepLink {
  const DeepLink({required this.uri});

  final Uri uri;
  String get name;

  factory DeepLink.fromUri(Uri uri) {
    if (uri.scheme.contains('openid4vc')) {
      return OpenId4CiDeepLink(uri: uri);
    }

    if (uri.scheme.contains('openid4vp')) {
      return OpenId4VpDeepLink(uri: uri);
    }

    if (uri.scheme.contains('credential-offer')) {
      return CredentialOfferDeepLink(uri: uri);
    }

    return ExternalDeepLink(uri: uri);
  }
}

class OpenId4CiDeepLink extends DeepLink {
  OpenId4CiDeepLink({required super.uri});

  @override
  String get name => 'openid4ci';
}

class OpenId4VpDeepLink extends DeepLink {
  OpenId4VpDeepLink({required super.uri});

  @override
  String get name => 'openid4vp';
}

class CredentialOfferDeepLink extends DeepLink {
  CredentialOfferDeepLink({required super.uri});

  @override
  String get name => 'credential-offer';
}

class ExternalDeepLink extends DeepLink {
  ExternalDeepLink({required super.uri});

  @override
  String get name => 'external';
}

@Riverpod(keepAlive: true)
class DeepLinkHandler extends _$DeepLinkHandler {
  SharedPreferencesController get _sharedPreferences => ref.read(sharedPreferencesControllerProvider.notifier);
  GoRouter get _router => ref.read(routerProvider);

  @override
  void build() {}

  Future<void> handleDeepLink(DeepLink deepLink) async {
    switch (deepLink) {
      case OpenId4CiDeepLink link:
        final iss = link.uri.queryParameters['iss'];
        final code = link.uri.queryParameters['code'];

        if (iss == null ||
            code == null ||
            iss.isEmpty ||
            code.isEmpty ||
            iss.toLowerCase() != Env.vciIssuerUrl.toLowerCase()) {
          return;
        }

        break;
      case CredentialOfferDeepLink link:
        _router.push(link.uri.toString());
        break;
      case OpenId4VpDeepLink link:
        _router.push(link.uri.toString());
        break;
      case ExternalDeepLink link:
        await launchUrl(link.uri);
        break;
    }
  }

  DeepLink? getPendingDeepLink() {
    final cachedDeepLink = _sharedPreferences.cachedDeepLink;
    if (cachedDeepLink == null) {
      return null;
    }

    return DeepLink.fromUri(cachedDeepLink);
  }

  void cacheDeepLink(Uri uri) {
    _sharedPreferences.cachedDeepLink = uri;
  }

  void removeCachedDeepLinkURL() {
    _sharedPreferences.cachedDeepLink = null;
  }
}
