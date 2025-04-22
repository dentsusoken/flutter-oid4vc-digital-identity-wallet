import 'package:flutter/widgets.dart';

class Measure {
  const Measure._();

  // space
  static const s_4 = 4.0;
  static const s_8 = 8.0;
  static const s_12 = 12.0;
  static const s_16 = 16.0;
  static const s_20 = 20.0;
  static const s_24 = 24.0;
  static const s_48 = 48.0;
  static const s_64 = 64.0;
  static const s_96 = 96.0;
  static const s_100 = 100.0;

  // radius
  static const r_4 = Radius.circular(4.0);
  static const r_8 = Radius.circular(8.0);
  static const r_16 = Radius.circular(16.0);

  // border radius
  static const br_4 = BorderRadius.all(Measure.r_4);
  static const br_8 = BorderRadius.all(Measure.r_8);
  static const br_16 = BorderRadius.all(Measure.r_16);
}
