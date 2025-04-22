import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tw_wallet_storage/tw_wallet_storage.dart';

part 'vp_history_details_provider.g.dart';

@riverpod
class VpHistoryDetails extends _$VpHistoryDetails {
  @override
  PresentationLog? build() {
    return null;
  }

  void update(PresentationLog item) {
    state = item;
  }
}
