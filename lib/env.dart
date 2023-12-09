import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
class Env {
  @EnviedField(
    varName: 'TMDB_ACCESS_TOKEN',
    obfuscate: true,
  )
  static final String tmdbAccessToken = _Env.tmdbAccessToken;
}
