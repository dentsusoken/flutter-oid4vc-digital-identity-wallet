import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:digital_wallet/core/providers/providers.dart';
import 'package:digital_wallet/core/utils/utils.dart';

class AppLoadingOverlay extends HookConsumerWidget {
  const AppLoadingOverlay({required this.child, super.key});

  final Widget child;

  static void show(dynamic ref) {
    TypeGuard.ref<StateController<int>>(ref).read(loadingOverlayProvider.notifier).show();
  }

  static void hide(dynamic ref) {
    TypeGuard.ref<StateController<int>>(ref).read(loadingOverlayProvider.notifier).hide();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final animationController = useAnimationController(duration: const Duration(milliseconds: 300));

    final fadeInFadeOutTween = Tween(begin: 0.0, end: 1.0).animate(animationController);

    final counter = ref.watch(loadingOverlayProvider);

    ref.listen<int>(loadingOverlayProvider, (_, counter) {
      if (counter > 0) {
        animationController.forward();
      } else {
        animationController.reverse();
      }
    });

    return Stack(
      children: [
        child,
        FadeTransition(
          opacity: fadeInFadeOutTween,
          child: AnimatedBuilder(
            animation: animationController,
            builder:
                (context, _) => IgnorePointer(
                  ignoring: counter < 1,
                  child: Container(
                    color: Colors.white.withValues(alpha: .8),
                    width: double.infinity,
                    height: double.infinity,
                    child: const Center(
                      child: SizedBox(width: 50, height: 50, child: CircularProgressIndicator(color: Colors.blue)),
                    ),
                  ),
                ),
          ),
        ),
      ],
    );
  }
}
