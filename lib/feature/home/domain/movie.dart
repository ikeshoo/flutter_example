import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    required int id,
    required String title,
    required String overview,
    required String posterPath,
    required DateTime releaseDate,
    required String backdropPath,
  }) = _Movie;

  static const posterUrl = 'https://image.tmdb.org/t/p/original';
}
