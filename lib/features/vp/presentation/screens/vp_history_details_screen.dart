import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tw_wallet_storage/presentation_log.dart';

import 'package:digital_wallet/core/extensions/extensions.dart';
import 'package:digital_wallet/core/theme/app_text_style.dart';
import 'package:digital_wallet/core/widgets/widgets.dart';
import 'package:digital_wallet/features/vp/presentation/provider/provider.dart';
import 'package:digital_wallet/gen/gen.dart';

class VpHistoryDetailsScreen extends StatelessWidget {
  const VpHistoryDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(t.vpHistoryDetails)), body: const SafeArea(child: _VpHistoryDetails()));
  }
}

class _VpHistoryDetails extends HookConsumerWidget {
  const _VpHistoryDetails();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final history = ref.watch(vpHistoryDetailsProvider);
    if (history == null) {
      return const SizedBox.shrink();
    }

    return Container(
      margin: const EdgeInsets.all(Measure.s_16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [_VpHistoryDetailsCard(history: history), _VpHistoryDetailsDoc(history: history)],
      ),
    );
  }
}

class _VpHistoryDetailsCard extends StatelessWidget {
  const _VpHistoryDetailsCard({required this.history});

  final PresentationLog history;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: Measure.s_16),
      decoration: const BoxDecoration(color: AppColors.transparentBlack, borderRadius: Measure.br_16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: Measure.s_4,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Measure.s_16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: Measure.s_4,
              children: [
                Text(history.submitAt.format(), style: AppTextStyle.h6),
                if (history.verifierName != null) Text(history.verifierName!, style: AppTextStyle.subtitle1),
                if (history.verifierURL != null) Text(history.verifierURL ?? '-', style: AppTextStyle.subtitle1),
                Text(
                  history.isSuccess ? t.success : t.fail,
                  style: AppTextStyle.subtitle1.copyWith(color: history.isSuccess ? AppColors.blue : AppColors.red),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Measure.s_8),
            child: Assets.icons.icIdStroke.svg(alignment: Alignment.centerLeft),
          ),
        ],
      ),
    );
  }
}

class _VpHistoryDetailsDoc extends StatelessWidget {
  const _VpHistoryDetailsDoc({required this.history});

  final PresentationLog history;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Measure.s_16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        spacing: Measure.s_8,
        children: [
          DocumentListItem(title: t.vcType, value: 'org.iso.18013.5.1', leading: 0),
          DocumentListItem(title: t.memberId, value: '12345788'),
          DocumentListItem(title: t.mailAddress, value: 'inga'),
        ],
      ),
    );
  }
}
