import 'package:flutter/widgets.dart';

import 'package:digital_wallet/core/theme/theme.dart';
import 'package:digital_wallet/gen/gen.dart';

class DocumentListItem extends StatelessWidget {
  const DocumentListItem({required this.title, required this.value, this.leading = 0, super.key});

  final String title;
  final String value;
  final double leading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: leading),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: AppTextStyle.subtitle1.copyWith(color: AppColors.darkGrey)),
          Text(value, style: AppTextStyle.body1),
        ],
      ),
    );
  }
}
