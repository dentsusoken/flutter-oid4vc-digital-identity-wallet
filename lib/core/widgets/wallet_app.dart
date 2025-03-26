import 'package:flutter/material.dart';

import 'package:app_links/app_links.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:digital_wallet/core/infrastructure/infrastructure.dart';
import 'package:digital_wallet/core/providers/providers.dart';
import 'package:digital_wallet/core/theme/theme.dart';
import 'package:digital_wallet/core/utils/utils.dart';
import 'package:digital_wallet/core/widgets/app_loading_overlay.dart';
import 'package:digital_wallet/core/widgets/app_secure_overlay.dart';
import 'package:digital_wallet/flavors.dart';
import 'package:digital_wallet/gen/gen.dart';

class WalletApp extends HookConsumerWidget {
  const WalletApp({super.key});

  static final provider = Provider<WalletApp>((_) => const WalletApp());

  static WalletApp of(dynamic ref) {
    return TypeGuard.widget<WalletApp>(ref, provider);
  }

  static Future<void> init() async {
    final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

    // add splash screen
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

    // use device locale
    LocaleSettings.useDeviceLocale();

    // error handling
    FlutterError.onError = logger.flutterError;
    widgetsBinding.platformDispatcher.onError = (error, stackTrace) {
      logger.error('Unhandled error', error: error, stackTrace: stackTrace);
      return true;
    };

    // handle deep links
    await handleDeepLinks();

    // remove splash screen
    FlutterNativeSplash.remove();
  }

  static Future<void> handleDeepLinks() async {
    final appLinks = AppLinks();

    appLinks.uriLinkStream.listen((uri) {
      // Do something (navigation, ...)
    });
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      routerConfig: router,
      title: F.title,
      debugShowCheckedModeBanner: false,
      themeMode: AppTheme.mode,
      theme: AppTheme.light,
      locale: TranslationProvider.of(context).flutterLocale,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      builder:
          (context, child) => MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1)),
            child: AppSecureOverlay(child: AppLoadingOverlay(child: child!)),
          ),
    );
  }
}
