import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';

class LoadingView extends HookWidget {
  const LoadingView({
    required this.isLoaded,
    required this.loadedView,
    this.loadingView,
    this.loadingIconSize = 32,
    this.loadingHeight,
    super.key,
  });

  final bool isLoaded;
  final Widget Function()? loadingView;
  final Widget Function()? loadedView;

  final double loadingIconSize;
  final double? loadingHeight;

  @override
  Widget build(BuildContext context) {
    final isDisabledLoadingView = useState(false);

    return Stack(
      children: [
        AnimatedOpacity(
          opacity: isLoaded ? 0 : 1,
          duration: const Duration(milliseconds: 250),
          onEnd: () {
            isDisabledLoadingView.value = isLoaded;
          },
          child: isDisabledLoadingView.value
              ? const SizedBox()
              : Padding(
                  padding: const EdgeInsets.all(16),
                  child: loadingView?.call() ??
                      SizedBox(
                        height: loadingHeight,
                        child: const Center(
                          child: CircularProgressIndicator(),
                        ),
                      ),
                ),
        ),
        AnimatedOpacity(
          opacity: isLoaded ? 1 : 0,
          duration: const Duration(milliseconds: 250),
          child: loadedView?.call() ?? const SizedBox(),
        ),
      ],
    );
  }
}
