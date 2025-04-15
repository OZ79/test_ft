import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test_ft/data/dio_provider.dart';
import 'package:test_ft/data/models/movies_details_response.dart';
import 'package:test_ft/data/models/movies_response.dart';

part 'movies_api.g.dart';

@RestApi()
abstract class MoviesApi {
  factory MoviesApi(Dio dio, {String? baseUrl}) = _MoviesApi;

  @GET('/movie/top_rated')
  Future<MoviesResponse> getTopRatedMovies({
    @Query('api_key') required String apiKey,
    @Query('page') required String page,
    @CancelRequest() CancelToken? cancelToken,
  });

  @GET('/movie/{movieId}')
  Future<MoviesDetailsResponse> getMovieDetails({
    @Query('api_key') required String apiKey,
    @Path('movieId') required String movieId,
    @CancelRequest() CancelToken? cancelToken,
  });

  @GET('search/movie')
  Future<MoviesResponse> getSearchMovies({
    @Query('api_key') required String apiKey,
    @Query('page') required String page,
    @Query('query') required String query,
    @CancelRequest() CancelToken? cancelToken,
  });
}

@Riverpod(keepAlive: true)
MoviesApi moviesApi(Ref ref) => MoviesApi(
      ref.watch(dioProvider),
    );
