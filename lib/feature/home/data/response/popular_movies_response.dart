import 'package:flutter_example/feature/home/data/response/movie_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'popular_movies_response.freezed.dart';
part 'popular_movies_response.g.dart';

@freezed
class PopularMoviesResponse with _$PopularMoviesResponse {
  const factory PopularMoviesResponse({
    required int page,
    @JsonKey(name: 'results') required List<MovieResponse> movies,
  }) = _PopularMoviesResponse;

  factory PopularMoviesResponse.fromJson(Map<String, dynamic> json) =>
      _$PopularMoviesResponseFromJson(json);
}
