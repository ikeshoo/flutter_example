// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$homeRepositoryHash() => r'aa5c9f9b1297578d8553ed03b640a277b31f37b0';

/// See also [homeRepository].
@ProviderFor(homeRepository)
final homeRepositoryProvider = Provider<HomeRepository>.internal(
  homeRepository,
  name: r'homeRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$homeRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef HomeRepositoryRef = ProviderRef<HomeRepository>;
String _$popularMoviesHash() => r'b4770415d533afa58c48f978223c3793242f1043';

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

/// See also [popularMovies].
@ProviderFor(popularMovies)
const popularMoviesProvider = PopularMoviesFamily();

/// See also [popularMovies].
class PopularMoviesFamily extends Family<AsyncValue<PopularMoviesResponse>> {
  /// See also [popularMovies].
  const PopularMoviesFamily();

  /// See also [popularMovies].
  PopularMoviesProvider call({
    required int page,
  }) {
    return PopularMoviesProvider(
      page: page,
    );
  }

  @override
  PopularMoviesProvider getProviderOverride(
    covariant PopularMoviesProvider provider,
  ) {
    return call(
      page: provider.page,
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
  String? get name => r'popularMoviesProvider';
}

/// See also [popularMovies].
class PopularMoviesProvider
    extends AutoDisposeFutureProvider<PopularMoviesResponse> {
  /// See also [popularMovies].
  PopularMoviesProvider({
    required int page,
  }) : this._internal(
          (ref) => popularMovies(
            ref as PopularMoviesRef,
            page: page,
          ),
          from: popularMoviesProvider,
          name: r'popularMoviesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$popularMoviesHash,
          dependencies: PopularMoviesFamily._dependencies,
          allTransitiveDependencies:
              PopularMoviesFamily._allTransitiveDependencies,
          page: page,
        );

  PopularMoviesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
  }) : super.internal();

  final int page;

  @override
  Override overrideWith(
    FutureOr<PopularMoviesResponse> Function(PopularMoviesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PopularMoviesProvider._internal(
        (ref) => create(ref as PopularMoviesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<PopularMoviesResponse> createElement() {
    return _PopularMoviesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PopularMoviesProvider && other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PopularMoviesRef on AutoDisposeFutureProviderRef<PopularMoviesResponse> {
  /// The parameter `page` of this provider.
  int get page;
}

class _PopularMoviesProviderElement
    extends AutoDisposeFutureProviderElement<PopularMoviesResponse>
    with PopularMoviesRef {
  _PopularMoviesProviderElement(super.provider);

  @override
  int get page => (origin as PopularMoviesProvider).page;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
