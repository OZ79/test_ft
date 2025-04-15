import 'package:dio/dio.dart';
import 'package:test_ft/data/models/movies_details_response.dart';
import 'package:test_ft/data/models/movies_response.dart';

abstract class MoviesRepositoryRepository {
  Future<MoviesResponse> getTopRatedMovies(int page, CancelToken cancelToken);
  Future<MoviesDetailsResponse> getMovieDetails(String movieId, CancelToken? cancelToken);
  Future<MoviesResponse> getSearchMovies(int page, String query, CancelToken cancelToken);
}
