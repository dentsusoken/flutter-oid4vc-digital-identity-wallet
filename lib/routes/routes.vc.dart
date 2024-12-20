part of 'routes.dart';

@TypedGoRoute<VcIssueSelectRoute>(
  path: '/vc',
  name: 'vc',
  routes: [
    TypedGoRoute<VcIssueSucceededRoute>(
      path: 'succeeded',
      name: 'vc_succeeded',
    ),
    TypedGoRoute<VcIssueDocumentRoute>(
      path: 'document',
      name: 'vc_document',
    ),
    TypedGoRoute<VcIssueFailedRoute>(
      path: 'failed',
      name: 'vc_failed',
    ),
  ],
)
class VcIssueSelectRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const VcIssueSelectScreen();
}

class VcIssueSucceededRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const VcIssueSucceededScreen();
}

class VcIssueDocumentRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const VcIssueDocumentScreen();
}

class VcIssueFailedRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const VcIssueFailedScreen();
}
