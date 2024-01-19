// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popular_movies.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PopularMovies {
  int get page => throw _privateConstructorUsedError;
  List<Movie> get movies => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PopularMoviesCopyWith<PopularMovies> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularMoviesCopyWith<$Res> {
  factory $PopularMoviesCopyWith(
          PopularMovies value, $Res Function(PopularMovies) then) =
      _$PopularMoviesCopyWithImpl<$Res, PopularMovies>;
  @useResult
  $Res call({int page, List<Movie> movies});
}

/// @nodoc
class _$PopularMoviesCopyWithImpl<$Res, $Val extends PopularMovies>
    implements $PopularMoviesCopyWith<$Res> {
  _$PopularMoviesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? movies = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      movies: null == movies
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PopularMoviesImplCopyWith<$Res>
    implements $PopularMoviesCopyWith<$Res> {
  factory _$$PopularMoviesImplCopyWith(
          _$PopularMoviesImpl value, $Res Function(_$PopularMoviesImpl) then) =
      __$$PopularMoviesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, List<Movie> movies});
}

/// @nodoc
class __$$PopularMoviesImplCopyWithImpl<$Res>
    extends _$PopularMoviesCopyWithImpl<$Res, _$PopularMoviesImpl>
    implements _$$PopularMoviesImplCopyWith<$Res> {
  __$$PopularMoviesImplCopyWithImpl(
      _$PopularMoviesImpl _value, $Res Function(_$PopularMoviesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? movies = null,
  }) {
    return _then(_$PopularMoviesImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      movies: null == movies
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc

class _$PopularMoviesImpl implements _PopularMovies {
  const _$PopularMoviesImpl(
      {required this.page, required final List<Movie> movies})
      : _movies = movies;

  @override
  final int page;
  final List<Movie> _movies;
  @override
  List<Movie> get movies {
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  @override
  String toString() {
    return 'PopularMovies(page: $page, movies: $movies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopularMoviesImpl &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._movies, _movies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, page, const DeepCollectionEquality().hash(_movies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PopularMoviesImplCopyWith<_$PopularMoviesImpl> get copyWith =>
      __$$PopularMoviesImplCopyWithImpl<_$PopularMoviesImpl>(this, _$identity);
}

abstract class _PopularMovies implements PopularMovies {
  const factory _PopularMovies(
      {required final int page,
      required final List<Movie> movies}) = _$PopularMoviesImpl;

  @override
  int get page;
  @override
  List<Movie> get movies;
  @override
  @JsonKey(ignore: true)
  _$$PopularMoviesImplCopyWith<_$PopularMoviesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
