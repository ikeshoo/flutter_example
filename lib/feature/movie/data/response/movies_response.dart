import 'package:flutter_example/feature/movie/data/response/movie_response.dart';
import 'package:flutter_example/feature/movie/domain/popular_movies.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movies_response.freezed.dart';
part 'movies_response.g.dart';

@freezed
class MoviesResponse with _$MoviesResponse {
  const MoviesResponse._();
  const factory MoviesResponse({
    required int page,
    @JsonKey(name: 'results') required List<MovieResponse> movies,
  }) = _MoviesResponse;

  factory MoviesResponse.fromJson(Map<String, dynamic> json) =>
      _$MoviesResponseFromJson(json);

  PopularMovies toEntity() {
    return PopularMovies(
      page: page,
      movies: movies.map((e) => e.toEntity()).toList(),
    );
  }
}
