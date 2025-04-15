// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'movies_details_response.freezed.dart';
part 'movies_details_response.g.dart';

@freezed
abstract class MoviesDetailsResponse with _$MoviesDetailsResponse {
  @JsonSerializable(includeIfNull: false)
  const factory MoviesDetailsResponse({
    String? title,
    String? overview,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'vote_average') double? voteAverage,
    @JsonKey(name: 'release_date') String? releaseDate,
  }) = _MoviesDetailsResponse;

  factory MoviesDetailsResponse.fromJson(Map<String, dynamic> json) => _$MoviesDetailsResponseFromJson(json);
}
