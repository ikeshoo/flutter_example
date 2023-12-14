import 'package:flutter/material.dart';
import 'package:flutter_example/feature/home/data/repository/home_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final popularMovies = ref.watch(popularMoviesProvider(page: 1));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: popularMovies.when(
        data: (data) => Text(data.toString()),
        error: (error, stackTrace) => Text(error.toString()),
        loading: () => const CircularProgressIndicator(),
      ),
    );
  }
}
