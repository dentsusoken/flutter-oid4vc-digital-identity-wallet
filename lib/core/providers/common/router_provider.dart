import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:digital_wallet/core/configs/configs.dart';
import 'package:digital_wallet/routes/routes.dart';

part 'router_provider.g.dart';

@Riverpod(keepAlive: true)
GoRouter router(Ref ref) {
  return GoRouter(
    debugLogDiagnostics: Env.isDebug,
    initialLocation: DashboardRoute().location,
    routes: $appRoutes,
    redirect: (context, state) {
      return state.name;
      // return  DashboardRoute().location;
    },
  );
}
