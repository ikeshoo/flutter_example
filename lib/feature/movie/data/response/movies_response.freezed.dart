// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movies_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MoviesResponse _$MoviesResponseFromJson(Map<String, dynamic> json) {
  return _MoviesResponse.fromJson(json);
}

/// @nodoc
mixin _$MoviesResponse {
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<MovieResponse> get movies => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoviesResponseCopyWith<MoviesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesResponseCopyWith<$Res> {
  factory $MoviesResponseCopyWith(
          MoviesResponse value, $Res Function(MoviesResponse) then) =
      _$MoviesResponseCopyWithImpl<$Res, MoviesResponse>;
  @useResult
  $Res call({int page, @JsonKey(name: 'results') List<MovieResponse> movies});
}

/// @nodoc
class _$MoviesResponseCopyWithImpl<$Res, $Val extends MoviesResponse>
    implements $MoviesResponseCopyWith<$Res> {
  _$MoviesResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$MoviesResponseImplCopyWith<$Res>
    implements $MoviesResponseCopyWith<$Res> {
  factory _$$MoviesResponseImplCopyWith(_$MoviesResponseImpl value,
          $Res Function(_$MoviesResponseImpl) then) =
      __$$MoviesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, @JsonKey(name: 'results') List<MovieResponse> movies});
}

/// @nodoc
class __$$MoviesResponseImplCopyWithImpl<$Res>
    extends _$MoviesResponseCopyWithImpl<$Res, _$MoviesResponseImpl>
    implements _$$MoviesResponseImplCopyWith<$Res> {
  __$$MoviesResponseImplCopyWithImpl(
      _$MoviesResponseImpl _value, $Res Function(_$MoviesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? movies = null,
  }) {
    return _then(_$MoviesResponseImpl(
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
class _$MoviesResponseImpl extends _MoviesResponse {
  const _$MoviesResponseImpl(
      {required this.page,
      @JsonKey(name: 'results') required final List<MovieResponse> movies})
      : _movies = movies,
        super._();

  factory _$MoviesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoviesResponseImplFromJson(json);

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
    return 'MoviesResponse(page: $page, movies: $movies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviesResponseImpl &&
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
  _$$MoviesResponseImplCopyWith<_$MoviesResponseImpl> get copyWith =>
      __$$MoviesResponseImplCopyWithImpl<_$MoviesResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoviesResponseImplToJson(
      this,
    );
  }
}

abstract class _MoviesResponse extends MoviesResponse {
  const factory _MoviesResponse(
      {required final int page,
      @JsonKey(name: 'results')
      required final List<MovieResponse> movies}) = _$MoviesResponseImpl;
  const _MoviesResponse._() : super._();

  factory _MoviesResponse.fromJson(Map<String, dynamic> json) =
      _$MoviesResponseImpl.fromJson;

  @override
  int get page;
  @override
  @JsonKey(name: 'results')
  List<MovieResponse> get movies;
  @override
  @JsonKey(ignore: true)
  _$$MoviesResponseImplCopyWith<_$MoviesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
