// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_item.freezed.dart';
part 'movie_item.g.dart';

@freezed
abstract class MovieItem with _$MovieItem {
  @JsonSerializable(includeIfNull: false)
  const factory MovieItem({
    int? id,
    String? title,
    String? overview,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'vote_average') double? voteAverage,
    @JsonKey(name: 'release_date') String? releaseDate,
  }) = _MovieItem;

  factory MovieItem.fromJson(Map<String, dynamic> json) => _$MovieItemFromJson(json);
}
