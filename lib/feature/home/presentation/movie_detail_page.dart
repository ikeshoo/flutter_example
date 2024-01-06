import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MovieDetailPage extends ConsumerWidget {
  const MovieDetailPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MovieDetailPage'),
      ),
      body: const Text('MovieDetailPage'),
    );
  }
}
