import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:digital_wallet/core/exceptions/exceptions.dart';
import 'package:digital_wallet/core/utils/ref_wrapper.dart';

class TypeGuard {
  const TypeGuard._();

  static RefWrapper ref<T>(dynamic ref) {
    if (ref is Ref || ref is WidgetRef) {
      return RefWrapper(ref);
    }

    throw const InvalidRefException();
  }

  static T widget<T extends Widget>(dynamic ref, ProviderListenable<T> provider) {
    if (provider is Provider<T> ||
        provider is FutureProvider<T> ||
        provider is StateProvider<T> ||
        provider is StreamProvider<T> ||
        provider is ProviderFamily<T, dynamic> ||
        provider is FutureProviderFamily<T, dynamic> ||
        provider is StateProviderFamily<T, dynamic> ||
        provider is StreamProviderFamily<T, dynamic> ||
        provider is AutoDisposeProvider<T> ||
        provider is AutoDisposeFutureProvider<T> ||
        provider is AutoDisposeStateProvider<T> ||
        provider is AutoDisposeStreamProvider<T>) {
      return TypeGuard.ref<T>(ref).watch(provider);
    }

    throw const InvalidProviderException();
  }
}
