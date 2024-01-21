import 'package:flutter/material.dart';
import 'package:flutter_example/feature/movie/domain/movie.dart';
import 'package:flutter_example/feature/movie/domain/movie_list_type.dart';
import 'package:flutter_example/feature/movie/presentation/home_page.dart';
import 'package:flutter_example/feature/movie/presentation/movie_detail_page.dart';
import 'package:flutter_example/feature/movie/presentation/movie_list_page.dart';
import 'package:flutter_example/feature/movie/presentation/search_page.dart';
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
          routes: [
            TypedGoRoute<MovieListRoute>(
              path: MovieListRoute.path,
            ),
          ],
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
  const MovieDetailRoute({
    this.$extra,
  });

  static const path = 'movie-detail';

  static final $parentNavigatorKey = rootNavigatorKey;

  final Movie? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return MovieDetailPage(movie: $extra);
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

class MovieListRoute extends GoRouteData {
  const MovieListRoute(this.type);

  static const path = 'movie-list';
  static final $parentNavigatorKey = rootNavigatorKey;
  final MovieListType type;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return MovieListPage(type: type);
  }
}
