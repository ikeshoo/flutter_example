import 'package:flutter_example/feature/home/data/home_api.dart';
import 'package:flutter_example/feature/home/data/response/popular_movies_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_repository.g.dart';

class HomeRepository {
  HomeRepository(this._homeApi);
  final HomeApi _homeApi;

// TODO: 疎通確認後に返り値を変更する。
  Future<PopularMoviesResponse> getPopularMovies({required int page}) async {
    final response = await _homeApi.getPopularMovies(page: page);
    return response;
  }
}

@Riverpod(keepAlive: true)
HomeRepository homeRepository(HomeRepositoryRef ref) {
  final homeApi = ref.watch(homeApiProvider);
  return HomeRepository(homeApi);
}

@riverpod
Future<PopularMoviesResponse> popularMovies(
  PopularMoviesRef ref, {
  required int page,
}) {
  final homeRepository = ref.watch(homeRepositoryProvider);
  return homeRepository.getPopularMovies(page: page);
}
