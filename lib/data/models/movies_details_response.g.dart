// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MoviesDetailsResponse _$MoviesDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _MoviesDetailsResponse(
      title: json['title'] as String?,
      overview: json['overview'] as String?,
      posterPath: json['poster_path'] as String?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      releaseDate: json['release_date'] as String?,
    );

Map<String, dynamic> _$MoviesDetailsResponseToJson(
        _MoviesDetailsResponse instance) =>
    <String, dynamic>{
      if (instance.title case final value?) 'title': value,
      if (instance.overview case final value?) 'overview': value,
      if (instance.posterPath case final value?) 'poster_path': value,
      if (instance.voteAverage case final value?) 'vote_average': value,
      if (instance.releaseDate case final value?) 'release_date': value,
    };
