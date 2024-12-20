import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:digital_wallet/core/infrastructure/infrastructure.dart';

class ProviderLogger extends ProviderObserver {
  @override
  void didAddProvider(
    ProviderBase<Object?> provider,
    Object? value,
    ProviderContainer container,
  ) {
    logger.trace('''did add provider:
{
  "provider": "${provider.name ?? provider.runtimeType}",
  "value": "$value"
}''');
  }

  @override
  void providerDidFail(
    ProviderBase<Object?> provider,
    Object error,
    StackTrace stackTrace,
    ProviderContainer container,
  ) {
    logger.trace('''provider did fail:
{
  "provider": "${provider.name ?? provider.runtimeType}",
  "error": "$error",
}''');
  }

  @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    logger.trace('''did update provider:
{
  "provider": "${provider.name ?? provider.runtimeType}",
  "newValue": "$newValue"
}''');
  }

  @override
  void didDisposeProvider(
    ProviderBase<Object?> provider,
    ProviderContainer container,
  ) {
    logger.trace('''did dispose provider:
{
  "provider": "${provider.name ?? provider.runtimeType}",
}''');
  }
}
