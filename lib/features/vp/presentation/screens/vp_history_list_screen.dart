import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tw_wallet_storage/tw_wallet_storage.dart';

import 'package:digital_wallet/core/extensions/extensions.dart';
import 'package:digital_wallet/core/theme/app_text_style.dart';
import 'package:digital_wallet/core/widgets/widgets.dart';
import 'package:digital_wallet/features/vp/presentation/provider/provider.dart';
import 'package:digital_wallet/gen/gen.dart';
import 'package:digital_wallet/routes/routes.dart';

class VpHistoryListScreen extends HookConsumerWidget {
  const VpHistoryListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(appBar: AppBar(title: Text(t.vpHistory)), body: const SafeArea(child: _VpHistoryList()));
  }
}

class _VpHistoryList extends HookConsumerWidget {
  const _VpHistoryList();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final histories = ref.watch(vpHistoryProvider);

    ref.listen(vpHistoryDetailsProvider, (_, __) => {});

    return AsyncValueView(
      histories,
      data: (items) {
        final lastIndex = items.length - 1;
        return ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return _VpHistoryListItem(
              item: items[index],
              margin: EdgeInsets.only(
                top: index == 0 ? Measure.s_16 : Measure.s_8,
                bottom: index == lastIndex ? Measure.s_16 : Measure.s_8,
                left: Measure.s_16,
                right: Measure.s_16,
              ),
              onTap: (item) {
                ref.read(vpHistoryDetailsProvider.notifier).update(item);
                VpHistoryDetailsRoute().push<void>(context);
              },
            );
          },
        );
      },
    );
  }
}

class _VpHistoryListItem extends StatelessWidget {
  const _VpHistoryListItem({required this.item, required this.margin, required this.onTap});

  final PresentationLog item;
  final EdgeInsetsGeometry margin;
  final void Function(PresentationLog) onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: TapDetector(
        onTap: () => onTap(item),
        borderRadius: Measure.s_16,
        backgroundColor: AppColors.transparentBlack,
        child: Container(
          padding: const EdgeInsets.all(Measure.s_16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: Measure.s_4,
            children: [
              Text(item.submitAt.format()),
              Text(
                item.isSuccess ? t.success : t.fail,
                style: AppTextStyle.body1.copyWith(color: item.isSuccess ? AppColors.blue : AppColors.red),
              ),
              Text(item.verifierName ?? '-'),
            ],
          ),
        ),
      ),
    );
  }
}
