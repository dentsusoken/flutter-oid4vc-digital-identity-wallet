import 'package:flutter/material.dart';

import 'package:digital_wallet/core/widgets/widgets.dart';
import 'package:digital_wallet/gen/gen.dart';

class VcCard extends StatelessWidget {
  const VcCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Measure.s_16),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(Measure.s_16), color: AppColors.lightBlue),
      child: Row(
        children: [
          Stack(
            alignment: Alignment.centerRight,
            children: [
              Padding(padding: const EdgeInsets.only(right: Measure.s_48), child: Assets.icons.icUser.svg()),
              Assets.icons.icId.svg(),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
