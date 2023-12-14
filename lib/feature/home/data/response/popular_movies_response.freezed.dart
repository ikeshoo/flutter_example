// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popular_movies_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PopularMoviesResponse _$PopularMoviesResponseFromJson(
    Map<String, dynamic> json) {
  return _PopularMoviesResponse.fromJson(json);
}

/// @nodoc
mixin _$PopularMoviesResponse {
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<MovieResponse> get movies => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PopularMoviesResponseCopyWith<PopularMoviesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularMoviesResponseCopyWith<$Res> {
  factory $PopularMoviesResponseCopyWith(PopularMoviesResponse value,
          $Res Function(PopularMoviesResponse) then) =
      _$PopularMoviesResponseCopyWithImpl<$Res, PopularMoviesResponse>;
  @useResult
  $Res call({int page, @JsonKey(name: 'results') List<MovieResponse> movies});
}

/// @nodoc
class _$PopularMoviesResponseCopyWithImpl<$Res,
        $Val extends PopularMoviesResponse>
    implements $PopularMoviesResponseCopyWith<$Res> {
  _$PopularMoviesResponseCopyWithImpl(this._value, this._then);

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
              as List<MovieResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PopularMoviesResponseImplCopyWith<$Res>
    implements $PopularMoviesResponseCopyWith<$Res> {
  factory _$$PopularMoviesResponseImplCopyWith(
          _$PopularMoviesResponseImpl value,
          $Res Function(_$PopularMoviesResponseImpl) then) =
      __$$PopularMoviesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, @JsonKey(name: 'results') List<MovieResponse> movies});
}

/// @nodoc
class __$$PopularMoviesResponseImplCopyWithImpl<$Res>
    extends _$PopularMoviesResponseCopyWithImpl<$Res,
        _$PopularMoviesResponseImpl>
    implements _$$PopularMoviesResponseImplCopyWith<$Res> {
  __$$PopularMoviesResponseImplCopyWithImpl(_$PopularMoviesResponseImpl _value,
      $Res Function(_$PopularMoviesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? movies = null,
  }) {
    return _then(_$PopularMoviesResponseImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      movies: null == movies
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<MovieResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PopularMoviesResponseImpl implements _PopularMoviesResponse {
  const _$PopularMoviesResponseImpl(
      {required this.page,
      @JsonKey(name: 'results') required final List<MovieResponse> movies})
      : _movies = movies;

  factory _$PopularMoviesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PopularMoviesResponseImplFromJson(json);

  @override
  final int page;
  final List<MovieResponse> _movies;
  @override
  @JsonKey(name: 'results')
  List<MovieResponse> get movies {
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  @override
  String toString() {
    return 'PopularMoviesResponse(page: $page, movies: $movies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopularMoviesResponseImpl &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._movies, _movies));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, page, const DeepCollectionEquality().hash(_movies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PopularMoviesResponseImplCopyWith<_$PopularMoviesResponseImpl>
      get copyWith => __$$PopularMoviesResponseImplCopyWithImpl<
          _$PopularMoviesResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PopularMoviesResponseImplToJson(
      this,
    );
  }
}

abstract class _PopularMoviesResponse implements PopularMoviesResponse {
  const factory _PopularMoviesResponse(
      {required final int page,
      @JsonKey(name: 'results')
      required final List<MovieResponse> movies}) = _$PopularMoviesResponseImpl;

  factory _PopularMoviesResponse.fromJson(Map<String, dynamic> json) =
      _$PopularMoviesResponseImpl.fromJson;

  @override
  int get page;
  @override
  @JsonKey(name: 'results')
  List<MovieResponse> get movies;
  @override
  @JsonKey(ignore: true)
  _$$PopularMoviesResponseImplCopyWith<_$PopularMoviesResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
