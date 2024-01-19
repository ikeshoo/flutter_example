import 'package:flutter_example/feature/movie/domain/movie.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'popular_movies.freezed.dart';

@freezed
class PopularMovies with _$PopularMovies {
  const factory PopularMovies({
    required int page,
    required List<Movie> movies,
  }) = _PopularMovies;
}
