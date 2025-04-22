import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:digital_wallet/core/widgets/widgets.dart';
import 'package:digital_wallet/gen/gen.dart';

enum VpShareStatus { documentFetching, documentFetched, shared, notFound }

class VpShareScreen extends StatelessWidget {
  const VpShareScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(t.verify)),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(t.vpShareRequestAttention),
            Row(
              children: [
                Expanded(child: Text(t.vpShareWhyNeedData)),
                IconButton(onPressed: () => {}, icon: const Icon(Icons.visibility_off)),
              ],
            ),
            const Spacer(),
            const _DocumentLoading(),
            const Spacer(),
            ButtonGroup([
              BasicButton(text: t.share, onPressed: () {}).primary(),
              BasicButton(
                text: t.cancel,
                onPressed: () {
                  context.pop();
                },
              ).outline(),
            ]).vertical(),
          ],
        ),
      ),
    );
  }
}

class _DocumentLoading extends StatelessWidget {
  const _DocumentLoading();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: Measure.s_12,
      children: [const CircularProgressIndicator(), Text(t.pleaseWait)],
    );
  }
}

class _DocumentNotFound extends StatelessWidget {
  const _DocumentNotFound();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: Measure.s_12,
      children: [
        const Icon(Icons.error_outline_rounded, color: AppColors.green, size: Measure.s_100),
        Text(t.vpShareDocumentNotFound),
      ],
    );
  }
}
