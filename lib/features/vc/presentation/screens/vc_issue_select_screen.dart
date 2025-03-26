import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/config/config.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:digital_wallet/core/configs/configs.dart';
import 'package:digital_wallet/core/theme/app_text_style.dart';
import 'package:digital_wallet/core/widgets/widgets.dart';
import 'package:digital_wallet/gen/gen.dart';
import 'package:url_launcher/url_launcher.dart';

class VcIssueSelectScreen extends StatelessWidget {
  const VcIssueSelectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(t.vcIssue)),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(Measure.s_16),
              child: Text(t.vcIssueDescription, style: AppTextStyle.subtitle1.copyWith(color: AppColors.black)),
            ),
            const Expanded(child: _VcList()),
          ],
        ),
      ),
    );
  }
}

class VcType {
  VcType({required this.id, required this.name});

  final String id;
  final String name;
}

class _VcList extends HookConsumerWidget {
  const _VcList();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vcTypes = <VcType>[VcType(id: '1', name: '会員VC')];

    return ListView.builder(
      itemCount: vcTypes.length,
      itemBuilder: (context, index) {
        final vc = vcTypes[index];
        return _VcListItem(
          vc: vc,
          onTap: () {
            const url =
                "${Env.vciIssuerUrl}/api/authorization?client_id=${Env.vciClientId}&response_type=code&scope=org.iso.18013.5.1.mDL%20openid&redirect_uri=${Env.verifierApiUri}";

            launchUrl(Uri.parse(url));
          },
        );
      },
    );
  }
}

class _VcListItem extends StatelessWidget {
  const _VcListItem({required this.vc, required this.onTap});

  final VcType vc;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TapDetector(
        onTap: onTap,
        borderRadius: Measure.s_16,
        backgroundColor: AppColors.transparentBlack,
        child: Container(
          padding: const EdgeInsets.all(Measure.s_16),
          child: Row(
            spacing: Measure.s_8,
            children: [
              Assets.icons.icId.svg(width: Measure.s_24, height: Measure.s_24),
              Text(vc.name),
              const Spacer(),
              const Icon(Icons.add, color: AppColors.blue),
            ],
          ),
        ),
      ),
    );
  }
}
