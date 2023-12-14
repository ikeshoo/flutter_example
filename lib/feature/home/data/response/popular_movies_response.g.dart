// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_movies_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PopularMoviesResponseImpl _$$PopularMoviesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PopularMoviesResponseImpl(
      page: json['page'] as int,
      movies: (json['results'] as List<dynamic>)
          .map((e) => MovieResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PopularMoviesResponseImplToJson(
        _$PopularMoviesResponseImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.movies,
    };
