// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MovieItem _$MovieItemFromJson(Map<String, dynamic> json) => _MovieItem(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      overview: json['overview'] as String?,
      posterPath: json['poster_path'] as String?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      releaseDate: json['release_date'] as String?,
    );

Map<String, dynamic> _$MovieItemToJson(_MovieItem instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.title case final value?) 'title': value,
      if (instance.overview case final value?) 'overview': value,
      if (instance.posterPath case final value?) 'poster_path': value,
      if (instance.voteAverage case final value?) 'vote_average': value,
      if (instance.releaseDate case final value?) 'release_date': value,
    };
