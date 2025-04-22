import 'package:flutter/material.dart';

import 'package:digital_wallet/core/widgets/measure.dart';

class ButtonGroup {
  ButtonGroup(
    this.buttons, {
    this.padding = const EdgeInsets.all(Measure.s_20),
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.mainAxisSize = MainAxisSize.min,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  });

  final List<Widget> buttons;
  EdgeInsets padding;
  MainAxisAlignment mainAxisAlignment;
  MainAxisSize mainAxisSize;
  CrossAxisAlignment crossAxisAlignment;

  Widget horizontal() {
    return Padding(
      padding: padding,
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        mainAxisSize: mainAxisSize,
        crossAxisAlignment: crossAxisAlignment,
        spacing: Measure.s_20,
        children: buttons,
      ),
    );
  }

  Widget vertical() {
    return Padding(
      padding: padding,
      child: Column(
        mainAxisAlignment: mainAxisAlignment,
        mainAxisSize: mainAxisSize,
        crossAxisAlignment: crossAxisAlignment,
        spacing: Measure.s_20,
        children: buttons,
      ),
    );
  }
}
