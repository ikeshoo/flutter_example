// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_movie_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$popularMovieControllerHash() =>
    r'dacb673686089131947301220b6851578a2f3784';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$PopularMovieController
    extends BuildlessAutoDisposeAsyncNotifier<PopularMovies> {
  late final MovieListType type;

  FutureOr<PopularMovies> build(
    MovieListType type,
  );
}

/// See also [PopularMovieController].
@ProviderFor(PopularMovieController)
const popularMovieControllerProvider = PopularMovieControllerFamily();

/// See also [PopularMovieController].
class PopularMovieControllerFamily extends Family<AsyncValue<PopularMovies>> {
  /// See also [PopularMovieController].
  const PopularMovieControllerFamily();

  /// See also [PopularMovieController].
  PopularMovieControllerProvider call(
    MovieListType type,
  ) {
    return PopularMovieControllerProvider(
      type,
    );
  }

  @override
  PopularMovieControllerProvider getProviderOverride(
    covariant PopularMovieControllerProvider provider,
  ) {
    return call(
      provider.type,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'popularMovieControllerProvider';
}

/// See also [PopularMovieController].
class PopularMovieControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<PopularMovieController,
        PopularMovies> {
  /// See also [PopularMovieController].
  PopularMovieControllerProvider(
    MovieListType type,
  ) : this._internal(
          () => PopularMovieController()..type = type,
          from: popularMovieControllerProvider,
          name: r'popularMovieControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$popularMovieControllerHash,
          dependencies: PopularMovieControllerFamily._dependencies,
          allTransitiveDependencies:
              PopularMovieControllerFamily._allTransitiveDependencies,
          type: type,
        );

  PopularMovieControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.type,
  }) : super.internal();

  final MovieListType type;

  @override
  FutureOr<PopularMovies> runNotifierBuild(
    covariant PopularMovieController notifier,
  ) {
    return notifier.build(
      type,
    );
  }

  @override
  Override overrideWith(PopularMovieController Function() create) {
    return ProviderOverride(
      origin: this,
      override: PopularMovieControllerProvider._internal(
        () => create()..type = type,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        type: type,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<PopularMovieController, PopularMovies>
      createElement() {
    return _PopularMovieControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PopularMovieControllerProvider && other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PopularMovieControllerRef
    on AutoDisposeAsyncNotifierProviderRef<PopularMovies> {
  /// The parameter `type` of this provider.
  MovieListType get type;
}

class _PopularMovieControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<PopularMovieController,
        PopularMovies> with PopularMovieControllerRef {
  _PopularMovieControllerProviderElement(super.provider);

  @override
  MovieListType get type => (origin as PopularMovieControllerProvider).type;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
