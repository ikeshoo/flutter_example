import 'package:flutter/material.dart';
import 'package:flutter_example/feature/movie/domain/movie_list_type.dart';
import 'package:flutter_example/feature/movie/domain/popular_movie_controller.dart';
import 'package:flutter_example/feature/movie/presentation/movie_grid.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MovieListPage extends ConsumerWidget {
  const MovieListPage({
    required this.type,
    Key? key,
  }) : super(key: key);

  final MovieListType type;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movieList = ref.watch(popularMovieControllerProvider(type));
    return Scaffold(
      appBar: AppBar(title: Text(type.title)),
      body: movieList.when(
        data: (data) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: MovieGrid(movies: data.movies),
        ),
        error: (error, stackTrace) =>
            Center(child: Text(stackTrace.toString())),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
