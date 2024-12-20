import 'package:digital_wallet/core/utils/type_guard.dart';

T getProviderWidget<T>(dynamic ref, dynamic provider) {
  return TypeGuard.ref(ref).watch(provider);
}
