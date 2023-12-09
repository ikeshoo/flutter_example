import 'package:flutter_example/router/navigator_key.dart';
import 'package:flutter_example/router/router_app.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_provider.g.dart';

@riverpod
GoRouter router(RouterRef ref) => GoRouter(
      navigatorKey: rootNavigatorKey,
      initialLocation: HomeRoute.path,
      routes: $appRoutes,
    );
