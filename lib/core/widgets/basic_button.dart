import 'package:flutter/material.dart';

import 'package:digital_wallet/core/theme/theme.dart';
import 'package:digital_wallet/core/widgets/widgets.dart';
import 'package:digital_wallet/gen/gen.dart';

class BasicButton {
  const BasicButton({required this.text, required this.onPressed, this.width, this.leading, this.trailing});

  final double? width;
  final String text;
  final Widget? leading;
  final Widget? trailing;
  final VoidCallback onPressed;

  Widget primary({bool enabled = true}) {
    return _BaseButton(
      text: text,
      leading: leading,
      trailing: trailing,
      style: ElevatedButton.styleFrom(
        foregroundColor: AppColors.white,
        backgroundColor: AppColors.blue,
        textStyle: AppTextStyle.button,
      ),
      width: width,
      enabled: enabled,
      onPressed: onPressed,
    );
  }

  Widget secondary({bool enabled = true}) {
    return _BaseButton(
      text: text,
      leading: leading,
      trailing: trailing,
      width: width,
      enabled: enabled,
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.black,
        backgroundColor: AppColors.white,
        textStyle: AppTextStyle.button,
      ),
    );
  }

  Widget danger({bool enabled = true}) {
    return _BaseButton(
      text: text,
      leading: leading,
      trailing: trailing,
      width: width,
      enabled: enabled,
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.white,
        backgroundColor: AppColors.red,
        textStyle: AppTextStyle.button,
      ),
    );
  }

  Widget outline({bool enabled = true}) {
    return _OutlineButton(
      text: text,
      leading: leading,
      trailing: trailing,
      width: width,
      enabled: enabled,
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: enabled ? AppColors.silver : AppColors.grey),
        foregroundColor: AppColors.black,
        backgroundColor: AppColors.white,
        textStyle: AppTextStyle.button,
      ),
    );
  }
}

class _BaseButton extends StatelessWidget {
  const _BaseButton({
    required this.text,
    required this.leading,
    required this.trailing,
    required this.style,
    required this.width,
    required this.enabled,
    required this.onPressed,
  });

  final String text;
  final ButtonStyle? style;
  final Widget? leading;
  final Widget? trailing;
  final double? width;
  final bool enabled;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: enabled ? onPressed : null,
      style: style,
      child: SizedBox(
        width: width,
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            spacing: Measure.s_4,
            children: [
              if (leading != null) leading!,
              Text(text, textAlign: TextAlign.center),
              if (trailing != null) trailing!,
            ],
          ),
        ),
      ),
    );
  }
}

class _OutlineButton extends StatelessWidget {
  const _OutlineButton({
    required this.text,
    required this.leading,
    required this.trailing,
    required this.width,
    required this.enabled,
    required this.onPressed,
    required this.style,
  });

  final String text;
  final Widget? leading;
  final Widget? trailing;
  final double? width;
  final bool enabled;
  final VoidCallback onPressed;
  final ButtonStyle? style;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: enabled ? onPressed : null,
      style: style,
      clipBehavior: Clip.none,
      child: SizedBox(
        // width: width,
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            spacing: Measure.s_4,
            children: [
              if (leading != null) leading!,
              Text(text, textAlign: TextAlign.center),
              if (trailing != null) trailing!,
            ],
          ),
        ),
      ),
    );
  }
}
