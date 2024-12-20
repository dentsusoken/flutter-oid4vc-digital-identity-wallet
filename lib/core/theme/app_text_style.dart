import 'package:flutter/material.dart';

import 'package:digital_wallet/core/theme/app_font_size.dart';
import 'package:digital_wallet/core/theme/app_font_weight.dart';

class AppTextStyle {
  static const h1 = TextStyle(
    fontSize: AppFontSize.largeTitle,
    fontWeight: AppFontWeight.bold,
  );
  static const h2 = TextStyle(
    fontSize: AppFontSize.title1,
    fontWeight: AppFontWeight.bold,
  );
  static const h3 = TextStyle(
    fontSize: AppFontSize.title2,
    fontWeight: AppFontWeight.bold,
  );
  static const h4 = TextStyle(
    fontSize: AppFontSize.title3,
    fontWeight: AppFontWeight.bold,
  );
  static const h5 = TextStyle(
    fontSize: AppFontSize.headline,
    fontWeight: AppFontWeight.medium,
  );
  static const h6 = TextStyle(
    fontSize: AppFontSize.subHeadline,
    fontWeight: AppFontWeight.medium,
  );
  static const subtitle1 = TextStyle(
    fontSize: AppFontSize.caption1,
    fontWeight: AppFontWeight.medium,
  );
  static const subtitle2 = TextStyle(
    fontSize: AppFontSize.caption2,
    fontWeight: AppFontWeight.medium,
  );
  static const body1 = TextStyle(
    fontSize: AppFontSize.body,
    fontWeight: AppFontWeight.regular,
  );
  static const body2 = TextStyle(
    fontSize: AppFontSize.caption2,
    fontWeight: AppFontWeight.regular,
  );
  static const button = TextStyle(
    fontSize: AppFontSize.body,
    fontWeight: AppFontWeight.medium,
  );
  static const overline = TextStyle(
    fontSize: AppFontSize.footnote,
    fontWeight: AppFontWeight.regular,
  );
  static const caption = TextStyle(
    fontSize: AppFontSize.footnote,
    fontWeight: AppFontWeight.regular,
  );
}
