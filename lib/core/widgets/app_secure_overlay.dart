import 'package:flutter/material.dart';

import 'package:blur/blur.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:digital_wallet/gen/colors.gen.dart';

class AppSecureOverlay extends HookConsumerWidget {
  const AppSecureOverlay({required this.child, super.key});

  final Widget child;

  static const _kBlurValue = 8.0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appLifecycleState = useAppLifecycleState();

    if (appLifecycleState == AppLifecycleState.resumed) {
      return child;
    }

    return Blur(blur: _kBlurValue, blurColor: AppColors.white, child: child);
  }
}
