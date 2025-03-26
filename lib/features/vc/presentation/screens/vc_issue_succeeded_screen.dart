import 'package:flutter/material.dart';

import 'package:digital_wallet/core/widgets/widgets.dart';
import 'package:digital_wallet/features/vc/presentation/widgets/vc_card.dart';
import 'package:digital_wallet/gen/gen.dart';
import 'package:digital_wallet/routes/routes.dart';

class VcIssueSucceededScreen extends StatelessWidget {
  const VcIssueSucceededScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(t.success), leading: const SizedBox.shrink()),
      body: SafeArea(
        child: PopScope(
          canPop: false,
          child: Padding(
            padding: const EdgeInsets.all(Measure.s_16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              spacing: Measure.s_16,
              children: [
                Text(t.vcSucceededDescription(document: '会員VC1')),
                const VcCard(),
                const Spacer(),
                BasicButton(
                  text: t.next,
                  onPressed: () {
                    VcIssueDocumentRoute().replace(context);
                  },
                ).primary(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
