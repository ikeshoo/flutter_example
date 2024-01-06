import 'package:flutter/material.dart';
import 'package:flutter_example/feature/home/presentation/home_page.dart';
import 'package:flutter_example/feature/home/presentation/movie_detail_page.dart';
import 'package:flutter_example/feature/search/search_page.dart';
import 'package:flutter_example/router/navigator_key.dart';
import 'package:flutter_example/router/root_page.dart';
import 'package:go_router/go_router.dart';

part 'router_app.g.dart';

@TypedStatefulShellRoute<RootRoute>(
  branches: [
    TypedStatefulShellBranch<HomeBranch>(
      routes: [
        TypedGoRoute<HomeRoute>(
          path: HomeRoute.path,
          routes: [
            TypedGoRoute<MovieDetailRoute>(
              path: MovieDetailRoute.path,
            ),
          ],
        ),
      ],
    ),
    TypedStatefulShellBranch<SearchBranch>(
      routes: [
        TypedGoRoute<SearchRoute>(
          path: SearchRoute.path,
        ),
      ],
    ),
  ],
)
class RootRoute extends StatefulShellRouteData {
  const RootRoute();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return RootPage(
      navigationShell: navigationShell,
    );
  }
}

class HomeBranch extends StatefulShellBranchData {
  static final $navigatorKey = homeNavigatorKey;
}

class HomeRoute extends GoRouteData {
  const HomeRoute();

  static const path = '/home';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}

class MovieDetailRoute extends GoRouteData {
  const MovieDetailRoute();

  static const path = 'movie-detail';

  static final $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const MovieDetailPage();
  }
}

class SearchBranch extends StatefulShellBranchData {
  static final $navigatorKey = searchNavigatorKey;
}

class SearchRoute extends GoRouteData {
  const SearchRoute();

  static const path = '/search';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SearchPage();
  }
}
