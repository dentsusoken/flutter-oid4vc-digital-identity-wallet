import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:digital_wallet/core/exceptions/exceptions.dart';

class RefWrapper {
  RefWrapper(this.ref);

  dynamic ref;

  T refresh<T>(Refreshable<T> provider) {
    switch (ref) {
      case final Ref v:
        return v.refresh(provider);
      case final WidgetRef v:
        return v.refresh(provider);
      default:
        throw const InvalidRefException();
    }
  }

  T read<T>(ProviderListenable<T> provider) {
    switch (ref) {
      case final Ref v:
        return v.read(provider);
      case final WidgetRef v:
        return v.read(provider);
      default:
        throw const InvalidRefException();
    }
  }

  T watch<T>(ProviderListenable<T> provider) {
    switch (ref) {
      case final Ref v:
        return v.watch(provider);
      case final WidgetRef v:
        return v.watch(provider);
      default:
        throw const InvalidRefException();
    }
  }

  void invalidate(ProviderOrFamily provider) {
    switch (ref) {
      case final Ref v:
        v.invalidate(provider);
      case final WidgetRef v:
        v.invalidate(provider);
      default:
        throw const InvalidRefException();
    }
  }

  bool exists(ProviderBase<Object?> provider) {
    switch (ref) {
      case final Ref v:
        return v.exists(provider);
      case final WidgetRef v:
        return v.exists(provider);
      default:
        throw const InvalidRefException();
    }
  }

  ProviderSubscriptionWrapper<T> listen<T>(
    ProviderListenable<T> provider,
    void Function(T? previous, T next) listener, {
    void Function(Object error, StackTrace stackTrace)? onError,
    bool fireImmediately = false,
  }) {
    switch (ref) {
      case final Ref v:
        final subscription = v.listen(
          provider,
          listener,
          onError: onError,
          fireImmediately: fireImmediately,
        );
        return _RefProviderSubscriptionWrapper(subscription);
      case final WidgetRef v:
        v.listen(
          provider,
          listener,
          onError: onError,
        );
        return _NullProviderSubscriptionWrapper();
      default:
        throw const InvalidRefException();
    }
  }

  void notifyListeners(void Function() cb) {
    switch (ref) {
      case final Ref v:
        v.notifyListeners();
      case WidgetRef():
        break;
      default:
        throw const InvalidRefException();
    }
  }

  void onAddListener(void Function() cb) {
    switch (ref) {
      case final Ref v:
        v.onAddListener(cb);
      case WidgetRef():
        break;
      default:
        throw const InvalidRefException();
    }
  }

  void onRemoveListener(void Function() cb) {
    switch (ref) {
      case final Ref v:
        v.onRemoveListener(cb);
      case WidgetRef():
        break;
      default:
        throw const InvalidRefException();
    }
  }

  void onResume(void Function() cb) {
    switch (ref) {
      case final Ref v:
        v.onResume(cb);
      case WidgetRef():
        break;
      default:
        throw const InvalidRefException();
    }
  }

  void onCancel(void Function() cb) {
    switch (ref) {
      case final Ref v:
        v.onCancel(cb);
      case WidgetRef():
        break;
      default:
        throw const InvalidRefException();
    }
  }

  void onDispose(void Function() cb) {
    switch (ref) {
      case final Ref v:
        v.onDispose(cb);
      case WidgetRef():
        break;
      default:
        throw const InvalidRefException();
    }
  }
}

abstract class ProviderSubscriptionWrapper<State> {
  bool get closed;
  State read();
  void close();
}

class _NullProviderSubscriptionWrapper<State>
    implements ProviderSubscriptionWrapper<State> {
  @override
  bool get closed => true;

  @override
  void close() {}

  @override
  State read() {
    return null as State;
  }
}

class _RefProviderSubscriptionWrapper<State>
    extends ProviderSubscriptionWrapper<State> {
  _RefProviderSubscriptionWrapper(this.source);

  final ProviderSubscription<State> source;

  @override
  bool get closed => source.closed;

  @override
  State read() => source.read();

  @override
  void close() => source.close();
}
