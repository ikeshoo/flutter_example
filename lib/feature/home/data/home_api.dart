import 'package:dio/dio.dart';
import 'package:flutter_example/common_data/app_dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_api.g.dart';

@RestApi(baseUrl: 'https://api.themoviedb.org')
abstract class HomeApi {
  factory HomeApi(Dio dio) = _HomeApi;

  @GET('/3/movie/popular')
  Future<String> getPopularMovies({
    @Query('language') String language = 'ja',
    @Query('page') required int page,
    @Query('region') String region = 'JP',
  });
}

@Riverpod(keepAlive: true)
HomeApi homeApi(HomeApiRef ref) {
  final dio = ref.watch(appDioProvider);
  return HomeApi(dio);
}
