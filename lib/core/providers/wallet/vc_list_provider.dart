import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tw_wallet_storage/document.dart';

part 'vc_list_provider.g.dart';

@riverpod
class VcListProvider extends _$VcListProvider {
  @override
  List<Document> build() {
    return [];
  }
}
