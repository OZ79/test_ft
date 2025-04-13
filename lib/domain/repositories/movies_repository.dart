import 'package:test_ft/data/models/movies_response.dart';

abstract class MoviesRepositoryRepository {
  Future<MoviesResponse> getTopRatedMovies(int page);
}
