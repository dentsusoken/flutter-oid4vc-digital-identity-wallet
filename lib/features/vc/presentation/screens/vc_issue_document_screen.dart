import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:digital_wallet/core/widgets/widgets.dart';
import 'package:digital_wallet/features/vc/presentation/widgets/widgets.dart';
import 'package:digital_wallet/gen/gen.dart';

class VcIssueDocumentScreen extends StatelessWidget {
  const VcIssueDocumentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('会員VC'),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete_forever_outlined),
            onPressed: () async {
              // TODO(maku): implement delete vc
              final confirmed = await AppDialog.confirm(
                context: context,
                title: t.documentDeletionConfirmTitle(document: 'VC'),
                message: t.documentDeletionConfirmDescription(document: 'VC'),
              );
              if (confirmed && context.mounted) {
                context.pop();
              }
            },
          ),
        ],
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(Measure.s_16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: Measure.s_16,
            children: [VcCard(), _VcDocument()],
          ),
        ),
      ),
    );
  }
}

class _VcDocument extends HookConsumerWidget {
  const _VcDocument();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: Measure.s_16,
      children: [
        DocumentListItem(title: t.mailAddress, value: 'inga'),
        DocumentListItem(title: t.memberId, value: '12345678'),
      ],
    );
  }
}
