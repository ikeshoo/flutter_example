import 'package:flutter/material.dart';
import 'package:flutter_example/feature/home/domain/popular_movie_controller.dart';
import 'package:flutter_example/feature/home/presentation/movie_grid.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final popularMovies = ref.watch(popularMovieControllerProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: popularMovies.when(
        data: (data) => MovieGrid(movies: data.movies),
        error: (error, stackTrace) => Text(error.toString()),
        loading: () => const CircularProgressIndicator(),
      ),
    );
  }
}
