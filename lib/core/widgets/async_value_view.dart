import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:digital_wallet/core/theme/theme.dart';
import 'package:digital_wallet/core/widgets/loading_view.dart';
import 'package:digital_wallet/gen/gen.dart';

class AsyncValueView<T> extends HookWidget {
  const AsyncValueView(
    this.value, {
    required this.data,
    this.loading,
    this.error,
    this.backgroundColor,
    this.loadingHeight,
    this.skipLoadingOnReload = false,
    this.skipLoadingOnRefresh = true,
    super.key,
  });

  final AsyncValue<T> value;
  final Widget Function(T data) data;
  final Widget? loading;
  final Widget Function(Object error)? error;
  final bool skipLoadingOnReload;
  final bool skipLoadingOnRefresh;

  final double? loadingHeight;

  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return value.maybeWhen(
      error: (err, _) {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: error?.call(err) ??
              Text(
                err.toString(),
                textAlign: TextAlign.left,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyle.body1.copyWith(
                  color: AppColors.red,
                ),
              ),
        );
      },
      orElse: () {
        final isLoaded = value.maybeWhen(
          skipLoadingOnReload: skipLoadingOnReload,
          skipLoadingOnRefresh: skipLoadingOnRefresh,
          data: (_) => true,
          orElse: () => false,
        );

        final v = value.value;

        return LoadingView(
          isLoaded: isLoaded,
          loadingView: loading != null ? () => loading! : null,
          loadedView: v != null
              ? () {
                  return Container(
                    color: backgroundColor ?? AppColors.white,
                    child: data(v),
                  );
                }
              : null,
        );
      },
    );
  }
}
