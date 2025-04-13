// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_item.freezed.dart';
part 'movie_item.g.dart';

@freezed
abstract class MovieItem with _$MovieItem {
  @JsonSerializable(includeIfNull: false)
  const factory MovieItem({
    required int id,
    required String title,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'vote_average') double? voteAverage,
  }) = _MovieItem;

  factory MovieItem.fromJson(Map<String, dynamic> json) => _$MovieItemFromJson(json);
}
