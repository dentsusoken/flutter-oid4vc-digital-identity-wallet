// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$dashboardRoute, $vcIssueSelectRoute, $vpShareRoute];

RouteBase get $dashboardRoute =>
    GoRouteData.$route(path: '/', name: 'dashboard', factory: $DashboardRouteExtension._fromState);

extension $DashboardRouteExtension on DashboardRoute {
  static DashboardRoute _fromState(GoRouterState state) => DashboardRoute();

  String get location => GoRouteData.$location('/');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) => context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $vcIssueSelectRoute => GoRouteData.$route(
  path: '/vc',
  name: 'vc',

  factory: $VcIssueSelectRouteExtension._fromState,
  routes: [
    GoRouteData.$route(path: 'succeeded', name: 'vc_succeeded', factory: $VcIssueSucceededRouteExtension._fromState),
    GoRouteData.$route(path: 'document', name: 'vc_document', factory: $VcIssueDocumentRouteExtension._fromState),
    GoRouteData.$route(path: 'failed', name: 'vc_failed', factory: $VcIssueFailedRouteExtension._fromState),
  ],
);

extension $VcIssueSelectRouteExtension on VcIssueSelectRoute {
  static VcIssueSelectRoute _fromState(GoRouterState state) => VcIssueSelectRoute();

  String get location => GoRouteData.$location('/vc');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) => context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $VcIssueSucceededRouteExtension on VcIssueSucceededRoute {
  static VcIssueSucceededRoute _fromState(GoRouterState state) => VcIssueSucceededRoute();

  String get location => GoRouteData.$location('/vc/succeeded');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) => context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $VcIssueDocumentRouteExtension on VcIssueDocumentRoute {
  static VcIssueDocumentRoute _fromState(GoRouterState state) => VcIssueDocumentRoute();

  String get location => GoRouteData.$location('/vc/document');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) => context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $VcIssueFailedRouteExtension on VcIssueFailedRoute {
  static VcIssueFailedRoute _fromState(GoRouterState state) => VcIssueFailedRoute();

  String get location => GoRouteData.$location('/vc/failed');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) => context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $vpShareRoute => GoRouteData.$route(
  path: '/vp',
  name: 'vp',

  factory: $VpShareRouteExtension._fromState,
  routes: [
    GoRouteData.$route(path: 'succeeded', name: 'vp_succeeded', factory: $VpShareSucceededRouteExtension._fromState),
    GoRouteData.$route(
      path: 'history',
      name: 'vp_history',

      factory: $VpHistoryListRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'details',
          name: 'vp_history_details',

          factory: $VpHistoryDetailsRouteExtension._fromState,
        ),
      ],
    ),
  ],
);

extension $VpShareRouteExtension on VpShareRoute {
  static VpShareRoute _fromState(GoRouterState state) => VpShareRoute();

  String get location => GoRouteData.$location('/vp');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) => context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $VpShareSucceededRouteExtension on VpShareSucceededRoute {
  static VpShareSucceededRoute _fromState(GoRouterState state) => VpShareSucceededRoute();

  String get location => GoRouteData.$location('/vp/succeeded');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) => context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $VpHistoryListRouteExtension on VpHistoryListRoute {
  static VpHistoryListRoute _fromState(GoRouterState state) => VpHistoryListRoute();

  String get location => GoRouteData.$location('/vp/history');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) => context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $VpHistoryDetailsRouteExtension on VpHistoryDetailsRoute {
  static VpHistoryDetailsRoute _fromState(GoRouterState state) => VpHistoryDetailsRoute();

  String get location => GoRouteData.$location('/vp/history/details');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) => context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
