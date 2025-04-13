// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_ft/data/models/movie_item.dart';

part 'movies_response.freezed.dart';
part 'movies_response.g.dart';

@freezed
abstract class MoviesResponse with _$MoviesResponse {
  @JsonSerializable(includeIfNull: false)
  const factory MoviesResponse({
    required int page,
    required List<MovieItem> results,
    @JsonKey(name: 'total_results') required int totalResults,
    @JsonKey(name: 'total_pages') required int totalPages,
  }) = _MoviesResponse;

  factory MoviesResponse.fromJson(Map<String, dynamic> json) => _$MoviesResponseFromJson(json);
}
