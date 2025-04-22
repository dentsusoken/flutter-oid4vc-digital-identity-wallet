import 'dart:async';

import 'package:flutter/material.dart';

import 'package:app_links/app_links.dart';
import 'package:digital_wallet/core/infrastructure/infrastructure.dart';
import 'package:digital_wallet/core/providers/providers.dart';
import 'package:digital_wallet/core/theme/theme.dart';
import 'package:digital_wallet/core/utils/utils.dart';
import 'package:digital_wallet/core/widgets/app_loading_overlay.dart';
import 'package:digital_wallet/core/widgets/app_secure_overlay.dart';
import 'package:digital_wallet/flavors.dart';
import 'package:digital_wallet/gen/gen.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tw_logging/tw_logging.dart';

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

    // add console logger target
    Logger.addTarget(ConsoleLoggerTarget(level: F.logLevel));

    // use device locale
    LocaleSettings.useDeviceLocale();

    // error handling
    FlutterError.onError = logger.flutterError;
    widgetsBinding.platformDispatcher.onError = (error, stackTrace) {
      logger.error('Unhandled error', error: error, stackTrace: stackTrace);
      return true;
    };

    // remove splash screen
    FlutterNativeSplash.remove();
  }

  static StreamSubscription<Uri> handleDeepLinks(DeepLinkHandler handler) {
    final appLinks = AppLinks();

    return appLinks.uriLinkStream.listen((uri) {
      final deepLink = DeepLink.fromUri(uri);
      handler.handleDeepLink(deepLink);
    });
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    useEffect(() {
      final deepLinkHandler = ref.read(deepLinkHandlerProvider.notifier);
      final stream = WalletApp.handleDeepLinks(deepLinkHandler);
      return () {
        stream.cancel();
      };
    }, []);

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
