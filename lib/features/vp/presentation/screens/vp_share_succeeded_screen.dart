import 'package:flutter/material.dart';

import 'package:digital_wallet/core/widgets/widgets.dart';
import 'package:digital_wallet/gen/gen.dart';

class VpShareSucceededScreen extends StatelessWidget {
  const VpShareSucceededScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(t.success)),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(Measure.s_16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(t.vpShareSucceeded),
              const Spacer(),
              const SizedBox(
                width: Measure.s_100,
                height: Measure.s_100,
                child: CircleAvatar(
                  backgroundColor: AppColors.green,
                  child: Icon(Icons.done, size: Measure.s_64, color: AppColors.white),
                ),
              ),
              const Spacer(),
              BasicButton(
                text: t.next,
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ).primary(),
            ],
          ),
        ),
      ),
    );
  }
}
