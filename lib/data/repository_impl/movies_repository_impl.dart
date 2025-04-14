import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test_ft/app_constants.dart';
import 'package:test_ft/data/api/movies_api.dart';
import 'package:test_ft/data/models/movies_details_response.dart';
import 'package:test_ft/data/models/movies_response.dart';
import 'package:test_ft/domain/repositories/movies_repository.dart';

part 'movies_repository_impl.g.dart';

class MoviesRepositoryImpl implements MoviesRepositoryRepository {
  final MoviesApi _api;

  const MoviesRepositoryImpl(this._api);

  @override
  Future<MoviesResponse> getTopRatedMovies(int page, CancelToken? cancelToken) async {
    return await _api.getTopRatedMovies(
      apiKey: AppConstants.apiKey,
      page: page.toString(),
      cancelToken: cancelToken,
    );
  }

  @override
  Future<MoviesDetailsResponse> getMovieDetails(String movieId, CancelToken? cancelToken) async {
    return await _api.getMovieDetails(
      apiKey: AppConstants.apiKey,
      movieId: movieId,
      cancelToken: cancelToken,
    );
  }
}

@Riverpod(keepAlive: true)
MoviesRepositoryImpl moviesRepository(Ref ref) => MoviesRepositoryImpl(
      ref.watch(moviesApiProvider),
    );

@riverpod
Future<MoviesResponse> fetchTopRatedMovies(Ref ref, int page) {
  final moviesRepo = ref.watch(moviesRepositoryProvider);

  final cancelToken = CancelToken();
  final link = ref.keepAlive();
  Timer? timer;

  ref.onDispose(() {
    cancelToken.cancel();
    timer?.cancel();
  });

  ref.onCancel(() {
    timer = Timer(const Duration(seconds: AppConstants.disposeCachedDataTimeInSec), () {
      link.close();
    });
  });

  ref.onResume(() {
    timer?.cancel();
  });

  return moviesRepo.getTopRatedMovies(page, cancelToken);
}

@riverpod
Future<MoviesDetailsResponse> fetchMovieDetails(Ref ref, String movieId) {
  final moviesRepo = ref.watch(moviesRepositoryProvider);

  final cancelToken = CancelToken();
  final link = ref.keepAlive();
  Timer? timer;

  ref.onDispose(() {
    cancelToken.cancel();
    timer?.cancel();
  });

  ref.onCancel(() {
    timer = Timer(const Duration(seconds: AppConstants.disposeCachedDataTimeInSec), () {
      link.close();
    });
  });

  ref.onResume(() {
    timer?.cancel();
  });

  return moviesRepo.getMovieDetails(movieId, cancelToken);
}
