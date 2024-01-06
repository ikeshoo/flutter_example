import 'package:flutter_example/feature/home/data/repository/home_repository.dart';
import 'package:flutter_example/feature/home/domain/popular_movies.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'popular_movie_controller.g.dart';

@riverpod
class PopularMovieController extends _$PopularMovieController {
  @override
  Future<PopularMovies> build() async {
    return _fetchMovies(page: 1);
  }

  Future<PopularMovies> _fetchMovies({required int page}) async {
    final repository = ref.watch(homeRepositoryProvider);
    return repository
        .getPopularMovies(page: page)
        .then((value) => value.toEntity());
  }
}
