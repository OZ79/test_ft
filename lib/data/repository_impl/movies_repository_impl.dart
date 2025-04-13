import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test_ft/app_constants.dart';
import 'package:test_ft/data/api/movies_api.dart';
import 'package:test_ft/data/models/movies_response.dart';
import 'package:test_ft/domain/repositories/movies_repository.dart';

part 'movies_repository_impl.g.dart';

class MoviesRepositoryImpl implements MoviesRepositoryRepository {
  final MoviesApi _api;

  const MoviesRepositoryImpl(this._api);

  @override
  Future<MoviesResponse> getTopRatedMovies(int page) async {
    return await _api.getTopRatedMovies(apiKey: AppConstants.apiKey, page: page.toString());
  }
}

@riverpod
MoviesRepositoryImpl moviesRepository(Ref ref) => MoviesRepositoryImpl(
      ref.watch(moviesApiProvider),
    );

@riverpod
Future<MoviesResponse> fetchTopRatedMovies(Ref ref, int page) {
  final moviesRepo = ref.watch(moviesRepositoryProvider);
  return moviesRepo.getTopRatedMovies(page);
}
