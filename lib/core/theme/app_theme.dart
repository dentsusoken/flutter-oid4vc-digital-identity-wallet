import 'package:flutter/material.dart';

import 'package:digital_wallet/core/theme/app_text_style.dart';
import 'package:digital_wallet/gen/gen.dart';

class AppTheme {
  const AppTheme._();

  static const mode = ThemeMode.light;

  static final _buttonStyle = ButtonStyle(
    padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 12, horizontal: 16)),
    elevation: WidgetStateProperty.all(6),
  );

  static final ThemeData light = ThemeData(
    primarySwatch: Colors.blue,
    appBarTheme: AppBarTheme(
      iconTheme: const IconThemeData(color: AppColors.black),
      backgroundColor: AppColors.lightBlue,
      centerTitle: true,
      titleTextStyle: AppTextStyle.h6.copyWith(color: AppColors.black),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(style: _buttonStyle),
    elevatedButtonTheme: ElevatedButtonThemeData(style: _buttonStyle),
  );
}
