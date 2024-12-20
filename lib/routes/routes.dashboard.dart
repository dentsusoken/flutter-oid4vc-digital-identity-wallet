part of 'routes.dart';

@TypedGoRoute<DashboardRoute>(path: '/', name: 'dashboard')
class DashboardRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const DashboardScreen();
}
