import 'package:flutter_example/feature/movie/data/movie_api.dart';
import 'package:flutter_example/feature/movie/data/response/movies_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'movie_repository.g.dart';

class MovieRepository {
  MovieRepository(this._movieApi);
  final MovieApi _movieApi;

  Future<MoviesResponse> getPopularMovies({required int page}) async {
    final response = await _movieApi.getPopularMovies(page: page);
    return response;
  }

  Future<MoviesResponse> getTopRatedMovies({required int page}) async {
    final response = await _movieApi.getTopRatedMovies(page: page);
    return response;
  }

  Future<MoviesResponse> getUpcomingMovies({required int page}) async {
    final response = await _movieApi.getUpcomingMovies(page: page);
    return response;
  }

  Future<MoviesResponse> getNowPlayingMovies({required int page}) async {
    final response = await _movieApi.getNowPlayingMovies(page: page);
    return response;
  }
}

@Riverpod(keepAlive: true)
MovieRepository movieRepository(MovieRepositoryRef ref) {
  final homeApi = ref.watch(movieApiProvider);
  return MovieRepository(homeApi);
}
