import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:digital_wallet/core/infrastructure/logging/logger.dart';

class ProviderLogger implements ProviderObserver {
  @override
  void didAddProvider(ProviderBase<Object?> provider, Object? value, ProviderContainer container) {
    logger.trace('[ADD]: ${provider.description}');
  }

  @override
  void didDisposeProvider(ProviderBase<Object?> provider, ProviderContainer container) {
    logger.trace('[DISPOSE]: ${provider.description}');
  }

  @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    logger.trace('[UPDATE]: ${provider.description}');
  }

  @override
  void providerDidFail(
    ProviderBase<Object?> provider,
    Object error,
    StackTrace stackTrace,
    ProviderContainer container,
  ) {
    logger.trace('[FAIL]: ${provider.description}');
  }
}

extension _ProviderExt<StateT> on ProviderBase<StateT> {
  String get description => name ?? toString();
}
