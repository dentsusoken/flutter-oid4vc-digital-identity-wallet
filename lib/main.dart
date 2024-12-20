import 'dart:async';

import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:digital_wallet/core/providers/providers.dart';
import 'package:digital_wallet/core/utils/provider_logger.dart';
import 'package:digital_wallet/core/widgets/widgets.dart';
import 'package:digital_wallet/gen/gen.dart';

FutureOr<void> main() async {
  // init app
  await WalletApp.init();

  // init shared preferences
  final sharedPreferences = await SharedPreferences.getInstance();

  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(sharedPreferences),
      ],
      observers: [
        ProviderLogger(),
      ],
      child: TranslationProvider(
        child: const WalletApp(),
      ),
    ),
  );
}
