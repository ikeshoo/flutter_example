import 'package:flutter/material.dart';
import 'package:flutter_example/router/root_navigation_bar.dart';
import 'package:go_router/go_router.dart';

class RootPage extends StatelessWidget {
  const RootPage({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: navigationShell,
      ),
      bottomNavigationBar: RootBottomNavigationBar(
        navigationShell: navigationShell,
      ),
    );
  }
}
