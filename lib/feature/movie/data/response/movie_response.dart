import 'package:flutter_example/feature/movie/domain/movie.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_response.freezed.dart';
part 'movie_response.g.dart';

@freezed
class MovieResponse with _$MovieResponse {
  const MovieResponse._();
  const factory MovieResponse({
    required int id,
    required String title,
    required String overview,
    @JsonKey(name: 'poster_path') required String posterPath,
    @JsonKey(name: 'release_date') required String releaseDate,
    @JsonKey(name: 'backdrop_path') required String backdropPath,
    @JsonKey(name: 'genre_ids') required List<int> genreIds,
  }) = _MovieResponse;

  factory MovieResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieResponseFromJson(json);

  Movie toEntity() {
    return Movie(
      id: id,
      title: title,
      overview: overview.isEmpty
          ? 'Sorry, Japanese overview is not available...'
          : overview,
      posterPath: Movie.posterUrl + posterPath,
      releaseDate: DateTime.parse(releaseDate),
      backdropPath: Movie.posterUrl + backdropPath,
      genres: genreIds.map((id) => MovieGenre.fromId(id)).toList(),
    );
  }
}
