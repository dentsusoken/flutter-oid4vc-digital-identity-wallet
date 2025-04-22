// ignore_for_file: avoid_manual_providers_as_generated_provider_dependency
import 'package:digital_wallet/core/providers/network/network.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tw_openid4vci/tw_openid4vci.dart';

part 'issuer_client_provider.g.dart';

@riverpod
IssuerClient issuerClient(Ref ref) {
  final dio = ref.watch(issuerDioProvider);

  return IssuerClient(dio);
}
