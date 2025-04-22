import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'loading_overlay_provider.g.dart';

@Riverpod(keepAlive: true)
class LoadingOverlay extends _$LoadingOverlay {
  @override
  int build() {
    return 0;
  }

  void show() {
    state += 1;
  }

  void hide() {
    if (state > 0) {
      state -= 1;
    }
  }
}
