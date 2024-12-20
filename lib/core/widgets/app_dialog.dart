import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:digital_wallet/core/theme/theme.dart';
import 'package:digital_wallet/core/widgets/basic_button.dart';
import 'package:digital_wallet/core/widgets/button_group.dart';
import 'package:digital_wallet/core/widgets/measure.dart';
import 'package:digital_wallet/gen/gen.dart';

class AppDialog {
  const AppDialog._();

  static Future<bool> confirm({
    required BuildContext context,
    required String title,
    required String message,
  }) async {
    final result = await showModalBottomSheet<bool>(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(Measure.s_24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            spacing: Measure.s_8,
            children: [
              Text(title, style: AppTextStyle.h6),
              Text(message),
              ButtonGroup(
                [
                  BasicButton(
                    text: t.yes,
                    onPressed: () => context.pop(true),
                  ).danger(),
                  BasicButton(
                    text: t.no,
                    onPressed: () => context.pop(false),
                  ).secondary(),
                ],
                padding: const EdgeInsets.symmetric(vertical: Measure.s_16),
              ).vertical(),
            ],
          ),
        );
      },
    );

    return result ?? false;
  }
}
