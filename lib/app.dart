import 'package:flutter/material.dart';
import 'package:flutter_example/router/router_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class App extends ConsumerWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
