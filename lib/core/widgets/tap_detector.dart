import 'package:flutter/material.dart';

class TapDetector extends StatelessWidget {
  const TapDetector({
    required this.child,
    required this.onTap,
    this.backgroundColor = Colors.transparent,
    this.borderRadius = 0,
    this.isDisabledSplash = false,
    super.key,
  });

  final Widget child;
  final Color backgroundColor;
  final double borderRadius;
  final bool isDisabledSplash;

  final VoidCallback? onTap;

  static const _splashOpacity = 0.7;

  @override
  Widget build(BuildContext context) {
    final splashOpacity = isDisabledSplash ? 0.0 : _splashOpacity;

    return Theme(
      data: ThemeData(
        splashColor: backgroundColor.withValues(alpha: splashOpacity),
        splashFactory: NoSplash.splashFactory,
        highlightColor:
            onTap == null || isDisabledSplash ? Colors.transparent : null,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: Container(
          decoration: BoxDecoration(
            color: backgroundColor,
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onTap,
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
