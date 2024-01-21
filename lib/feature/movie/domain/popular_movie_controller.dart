import 'package:flutter_example/feature/movie/data/repository/movie_repository.dart';
import 'package:flutter_example/feature/movie/domain/movie_list_type.dart';
import 'package:flutter_example/feature/movie/domain/popular_movies.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'popular_movie_controller.g.dart';

@riverpod
class PopularMovieController extends _$PopularMovieController {
  @override
  Future<PopularMovies> build(MovieListType type) async {
    return _fetchMovies(
      type: type,
      page: 1,
    );
  }

  Future<PopularMovies> _fetchMovies({
    required MovieListType type,
    required int page,
  }) async {
    final repository = ref.watch(movieRepositoryProvider);
    final movieList = switch (type) {
      MovieListType.popular => repository.getPopularMovies(page: page),
      MovieListType.topRated => repository.getTopRatedMovies(page: page),
      MovieListType.upcoming => repository.getUpcomingMovies(page: page),
      MovieListType.nowPlaying => repository.getNowPlayingMovies(page: page),
    };
    return movieList.then((value) => value.toEntity());
  }
}
