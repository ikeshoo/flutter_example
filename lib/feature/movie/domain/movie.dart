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
    required List<MovieGenre> genres,
  }) = _Movie;

  static const posterUrl = 'https://image.tmdb.org/t/p/original';
}

enum MovieGenre {
  action(id: 28, name: 'アクション'),
  adventure(id: 12, name: 'アドベンチャー'),
  animation(id: 16, name: 'アニメーション'),
  comedy(id: 35, name: 'コメディ'),
  crime(id: 80, name: 'クライム'),
  documentary(id: 99, name: 'ドキュメンタリー'),
  drama(id: 18, name: 'ドラマ'),
  family(id: 10751, name: 'ファミリー'),
  fantasy(id: 14, name: 'ファンタジー'),
  history(id: 36, name: '歴史'),
  horror(id: 27, name: 'ホラー'),
  music(id: 10402, name: '音楽'),
  mystery(id: 9648, name: 'ミステリー'),
  romance(id: 10749, name: 'ロマンス'),
  scienceFiction(id: 878, name: 'SF'),
  tvMovie(id: 10770, name: 'テレビ映画'),
  thriller(id: 53, name: 'スリラー'),
  war(id: 10752, name: '戦争'),
  western(id: 37, name: '西部劇'),
  none(id: -1, name: 'なし'),
  ;

  static MovieGenre fromId(int id) {
    return MovieGenre.values.firstWhere(
      (e) => e.id == id,
      orElse: () => none,
    );
  }

  const MovieGenre({
    required this.id,
    required this.name,
  });

  final int id;
  final String name;
}
