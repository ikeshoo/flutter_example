// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router_app.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $rootRoute,
    ];

RouteBase get $rootRoute => StatefulShellRouteData.$route(
      factory: $RootRouteExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          navigatorKey: HomeBranch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/home',
              factory: $HomeRouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'movie-detail',
                  parentNavigatorKey: MovieDetailRoute.$parentNavigatorKey,
                  factory: $MovieDetailRouteExtension._fromState,
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: SearchBranch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/search',
              factory: $SearchRouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'movie-list',
                  parentNavigatorKey: MovieListRoute.$parentNavigatorKey,
                  factory: $MovieListRouteExtension._fromState,
                ),
              ],
            ),
          ],
        ),
      ],
    );

extension $RootRouteExtension on RootRoute {
  static RootRoute _fromState(GoRouterState state) => const RootRoute();
}

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $MovieDetailRouteExtension on MovieDetailRoute {
  static MovieDetailRoute _fromState(GoRouterState state) => MovieDetailRoute(
        $extra: state.extra as Movie?,
      );

  String get location => GoRouteData.$location(
        '/home/movie-detail',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

extension $SearchRouteExtension on SearchRoute {
  static SearchRoute _fromState(GoRouterState state) => const SearchRoute();

  String get location => GoRouteData.$location(
        '/search',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $MovieListRouteExtension on MovieListRoute {
  static MovieListRoute _fromState(GoRouterState state) => MovieListRoute(
        _$MovieListTypeEnumMap._$fromName(state.uri.queryParameters['type']!),
      );

  String get location => GoRouteData.$location(
        '/search/movie-list',
        queryParams: {
          'type': _$MovieListTypeEnumMap[type],
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

const _$MovieListTypeEnumMap = {
  MovieListType.popular: 'popular',
  MovieListType.topRated: 'top-rated',
  MovieListType.upcoming: 'upcoming',
  MovieListType.nowPlaying: 'now-playing',
};

extension<T extends Enum> on Map<T, String> {
  T _$fromName(String value) =>
      entries.singleWhere((element) => element.value == value).key;
}
