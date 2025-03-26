import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:digital_wallet/core/utils/type_guard.dart';

T getProviderWidget<T>(dynamic ref, ProviderListenable<T> provider) {
  return TypeGuard.ref<T>(ref).watch(provider);
}
