import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tw_wallet_storage/tw_wallet_storage.dart';
import 'package:uuid/uuid.dart';

part 'vp_history_provider.g.dart';

@riverpod
FutureOr<List<PresentationLog>> vpHistory(Ref ref) {
  return [
    PresentationLog(id: const Uuid().v4(), verifierName: 'EUDI Verifier', submitAt: DateTime.now(), isSuccess: true),
    PresentationLog(
      id: const Uuid().v4(),
      verifierName: 'EUDI Verifier',
      verifierURL: 'https://oid4vc-verifier-endpoint-hono.g-trustedweb.workers.dev',
      submitAt: DateTime.now(),
      isSuccess: true,
    ),
  ];
}
