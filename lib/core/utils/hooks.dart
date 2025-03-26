import 'package:flutter/widgets.dart';

import 'package:flutter_hooks/flutter_hooks.dart';

void execAfterMount(VoidCallback callback) {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    callback();
  });
}

void useDidMount(VoidCallback callback, [VoidCallback? cleanup]) {
  useEffect(() {
    execAfterMount(callback);
    return cleanup;
  }, []);
}
