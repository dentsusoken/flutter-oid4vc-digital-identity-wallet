import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:digital_wallet/core/widgets/widgets.dart';
import 'package:digital_wallet/gen/gen.dart';
import 'package:digital_wallet/routes/routes.dart';

class DashboardScreen extends HookConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text(t.dashboard)),
      body: SafeArea(
        bottom: false,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            const _DocumentList(),
            Positioned(
              bottom: Measure.s_16,
              child:
                  ButtonGroup([
                    BasicButton(
                      text: t.addDoc,
                      leading: const Icon(Icons.add, color: AppColors.black, size: 24),
                      onPressed: () {
                        VcIssueSelectRoute().push<void>(context);
                      },
                    ).secondary(),
                    BasicButton(
                      text: t.vpHistory,
                      leading: const Icon(Icons.history, color: AppColors.white, size: 24),
                      onPressed: () {
                        VpHistoryListRoute().push<void>(context);
                      },
                    ).primary(),
                  ]).horizontal(),
            ),
          ],
        ),
      ),
    );
  }
}

class _DocumentList extends HookConsumerWidget {
  const _DocumentList();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: Measure.s_8,
      mainAxisSpacing: Measure.s_8,
      padding: const EdgeInsets.only(top: Measure.s_16, left: Measure.s_16, right: Measure.s_16, bottom: Measure.s_96),
      childAspectRatio: 1.4,
      children: [],
    );
  }
}

class _DocumentListItem extends StatelessWidget {
  const _DocumentListItem({required this.i});

  final int i;

  @override
  Widget build(BuildContext context) {
    return TapDetector(
      onTap: () {
        VcIssueDocumentRoute().push<void>(context);
      },
      borderRadius: Measure.s_16,
      child: Container(
        padding: const EdgeInsets.all(Measure.s_16),
        color: AppColors.transparentBlack,
        child: Column(
          children: [
            Assets.icons.icId.svg(),
            const SizedBox(height: Measure.s_8),
            Text(
              'Document $i',
              style: const TextStyle(color: AppColors.black, fontSize: Measure.s_16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
