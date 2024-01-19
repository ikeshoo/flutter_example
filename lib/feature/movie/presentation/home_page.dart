import 'package:flutter/material.dart';
import 'package:flutter_example/feature/movie/domain/popular_movie_controller.dart';
import 'package:flutter_example/feature/movie/presentation/movie_grid.dart';
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
        data: (data) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: MovieGrid(movies: data.movies),
        ),
        error: (error, stackTrace) => Text(error.toString()),
        loading: () => const CircularProgressIndicator(),
      ),
    );
  }
}
