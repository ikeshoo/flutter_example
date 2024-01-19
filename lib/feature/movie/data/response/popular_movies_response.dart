import 'package:flutter_example/feature/movie/data/response/movie_response.dart';
import 'package:flutter_example/feature/movie/domain/popular_movies.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'popular_movies_response.freezed.dart';
part 'popular_movies_response.g.dart';

@freezed
class PopularMoviesResponse with _$PopularMoviesResponse {
  const PopularMoviesResponse._();
  const factory PopularMoviesResponse({
    required int page,
    @JsonKey(name: 'results') required List<MovieResponse> movies,
  }) = _PopularMoviesResponse;

  factory PopularMoviesResponse.fromJson(Map<String, dynamic> json) =>
      _$PopularMoviesResponseFromJson(json);

  PopularMovies toEntity() {
    return PopularMovies(
      page: page,
      movies: movies.map((e) => e.toEntity()).toList(),
    );
  }
}
