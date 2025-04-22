part of 'routes.dart';

@TypedGoRoute<VpShareRoute>(
  path: '/vp',
  name: 'vp',
  routes: [
    TypedGoRoute<VpShareSucceededRoute>(path: 'succeeded', name: 'vp_succeeded'),
    TypedGoRoute<VpHistoryListRoute>(
      path: 'history',
      name: 'vp_history',
      routes: [TypedGoRoute<VpHistoryDetailsRoute>(path: 'details', name: 'vp_history_details')],
    ),
  ],
)
class VpShareRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => const VpShareScreen();
}

class VpShareSucceededRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => const VpShareSucceededScreen();
}

class VpHistoryListRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => const VpHistoryListScreen();
}

class VpHistoryDetailsRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => const VpHistoryDetailsScreen();
}
