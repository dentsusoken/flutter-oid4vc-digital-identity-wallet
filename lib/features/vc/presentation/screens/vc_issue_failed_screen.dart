import 'package:flutter/material.dart';

import 'package:digital_wallet/core/theme/theme.dart';
import 'package:digital_wallet/core/widgets/widgets.dart';
import 'package:digital_wallet/gen/gen.dart';

class VcIssueFailedScreen extends StatelessWidget {
  const VcIssueFailedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(t.error)),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(Measure.s_16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text(t.vcFailed, style: AppTextStyle.h5), Text(t.vcFailedDescription)],
          ),
        ),
      ),
    );
  }
}
