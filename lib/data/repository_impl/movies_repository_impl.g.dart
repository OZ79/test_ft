// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$moviesRepositoryHash() => r'c6d19d5ac73227b08900ef1f3575726caa8dc4c8';

/// See also [moviesRepository].
@ProviderFor(moviesRepository)
final moviesRepositoryProvider =
    AutoDisposeProvider<MoviesRepositoryImpl>.internal(
  moviesRepository,
  name: r'moviesRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$moviesRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef MoviesRepositoryRef = AutoDisposeProviderRef<MoviesRepositoryImpl>;
String _$fetchTopRatedMoviesHash() =>
    r'4b740a575679710882af0760580442fed5741d06';

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

/// See also [fetchTopRatedMovies].
@ProviderFor(fetchTopRatedMovies)
const fetchTopRatedMoviesProvider = FetchTopRatedMoviesFamily();

/// See also [fetchTopRatedMovies].
class FetchTopRatedMoviesFamily extends Family<AsyncValue<MoviesResponse>> {
  /// See also [fetchTopRatedMovies].
  const FetchTopRatedMoviesFamily();

  /// See also [fetchTopRatedMovies].
  FetchTopRatedMoviesProvider call(
    int page,
  ) {
    return FetchTopRatedMoviesProvider(
      page,
    );
  }

  @override
  FetchTopRatedMoviesProvider getProviderOverride(
    covariant FetchTopRatedMoviesProvider provider,
  ) {
    return call(
      provider.page,
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
  String? get name => r'fetchTopRatedMoviesProvider';
}

/// See also [fetchTopRatedMovies].
class FetchTopRatedMoviesProvider
    extends AutoDisposeFutureProvider<MoviesResponse> {
  /// See also [fetchTopRatedMovies].
  FetchTopRatedMoviesProvider(
    int page,
  ) : this._internal(
          (ref) => fetchTopRatedMovies(
            ref as FetchTopRatedMoviesRef,
            page,
          ),
          from: fetchTopRatedMoviesProvider,
          name: r'fetchTopRatedMoviesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchTopRatedMoviesHash,
          dependencies: FetchTopRatedMoviesFamily._dependencies,
          allTransitiveDependencies:
              FetchTopRatedMoviesFamily._allTransitiveDependencies,
          page: page,
        );

  FetchTopRatedMoviesProvider._internal(
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
    FutureOr<MoviesResponse> Function(FetchTopRatedMoviesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchTopRatedMoviesProvider._internal(
        (ref) => create(ref as FetchTopRatedMoviesRef),
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
  AutoDisposeFutureProviderElement<MoviesResponse> createElement() {
    return _FetchTopRatedMoviesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchTopRatedMoviesProvider && other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FetchTopRatedMoviesRef on AutoDisposeFutureProviderRef<MoviesResponse> {
  /// The parameter `page` of this provider.
  int get page;
}

class _FetchTopRatedMoviesProviderElement
    extends AutoDisposeFutureProviderElement<MoviesResponse>
    with FetchTopRatedMoviesRef {
  _FetchTopRatedMoviesProviderElement(super.provider);

  @override
  int get page => (origin as FetchTopRatedMoviesProvider).page;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
