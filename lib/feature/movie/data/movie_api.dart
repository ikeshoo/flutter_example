import 'package:dio/dio.dart';
import 'package:flutter_example/common_data/app_dio.dart';
import 'package:flutter_example/feature/movie/data/response/movies_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'movie_api.g.dart';

@RestApi(baseUrl: 'https://api.themoviedb.org')
abstract class MovieApi {
  factory MovieApi(Dio dio) = _MovieApi;

  @GET('/3/movie/popular')
  Future<MoviesResponse> getPopularMovies({
    @Query('language') String language = 'ja',
    @Query('page') required int page,
    @Query('region') String region = 'JP',
  });
}

@Riverpod(keepAlive: true)
MovieApi movieApi(MovieApiRef ref) {
  final dio = ref.watch(appDioProvider);
  return MovieApi(dio);
}
