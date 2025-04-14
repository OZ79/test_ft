// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$moviesRepositoryHash() => r'efd9c68dafe552e83fe9c9126b7ad08f1853cc28';

/// See also [moviesRepository].
@ProviderFor(moviesRepository)
final moviesRepositoryProvider = Provider<MoviesRepositoryImpl>.internal(
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
typedef MoviesRepositoryRef = ProviderRef<MoviesRepositoryImpl>;
String _$fetchTopRatedMoviesHash() =>
    r'4a5ed9010a224e586493cb47f1e808d902b469f0';

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

String _$fetchMovieDetailsHash() => r'0315c29b01759e54f900637609628690bb4e583f';

/// See also [fetchMovieDetails].
@ProviderFor(fetchMovieDetails)
const fetchMovieDetailsProvider = FetchMovieDetailsFamily();

/// See also [fetchMovieDetails].
class FetchMovieDetailsFamily
    extends Family<AsyncValue<MoviesDetailsResponse>> {
  /// See also [fetchMovieDetails].
  const FetchMovieDetailsFamily();

  /// See also [fetchMovieDetails].
  FetchMovieDetailsProvider call(
    String movieId,
  ) {
    return FetchMovieDetailsProvider(
      movieId,
    );
  }

  @override
  FetchMovieDetailsProvider getProviderOverride(
    covariant FetchMovieDetailsProvider provider,
  ) {
    return call(
      provider.movieId,
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
  String? get name => r'fetchMovieDetailsProvider';
}

/// See also [fetchMovieDetails].
class FetchMovieDetailsProvider
    extends AutoDisposeFutureProvider<MoviesDetailsResponse> {
  /// See also [fetchMovieDetails].
  FetchMovieDetailsProvider(
    String movieId,
  ) : this._internal(
          (ref) => fetchMovieDetails(
            ref as FetchMovieDetailsRef,
            movieId,
          ),
          from: fetchMovieDetailsProvider,
          name: r'fetchMovieDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchMovieDetailsHash,
          dependencies: FetchMovieDetailsFamily._dependencies,
          allTransitiveDependencies:
              FetchMovieDetailsFamily._allTransitiveDependencies,
          movieId: movieId,
        );

  FetchMovieDetailsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.movieId,
  }) : super.internal();

  final String movieId;

  @override
  Override overrideWith(
    FutureOr<MoviesDetailsResponse> Function(FetchMovieDetailsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchMovieDetailsProvider._internal(
        (ref) => create(ref as FetchMovieDetailsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        movieId: movieId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<MoviesDetailsResponse> createElement() {
    return _FetchMovieDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchMovieDetailsProvider && other.movieId == movieId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, movieId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FetchMovieDetailsRef
    on AutoDisposeFutureProviderRef<MoviesDetailsResponse> {
  /// The parameter `movieId` of this provider.
  String get movieId;
}

class _FetchMovieDetailsProviderElement
    extends AutoDisposeFutureProviderElement<MoviesDetailsResponse>
    with FetchMovieDetailsRef {
  _FetchMovieDetailsProviderElement(super.provider);

  @override
  String get movieId => (origin as FetchMovieDetailsProvider).movieId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
