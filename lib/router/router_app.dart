import 'package:flutter/material.dart';
import 'package:flutter_example/feature/home/home_page.dart';
import 'package:go_router/go_router.dart';

part 'router_app.g.dart';

@TypedGoRoute<HomeRoute>(
  path: HomeRoute.path,
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  static const path = '/';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}
