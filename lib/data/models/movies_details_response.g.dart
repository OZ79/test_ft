// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MoviesDetailsResponse _$MoviesDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _MoviesDetailsResponse(
      title: json['title'] as String,
      overview: json['overview'] as String,
      posterPath: json['poster_path'] as String,
      voteAverage: (json['vote_average'] as num).toDouble(),
      releaseDate: json['release_date'] as String,
    );

Map<String, dynamic> _$MoviesDetailsResponseToJson(
        _MoviesDetailsResponse instance) =>
    <String, dynamic>{
      'title': instance.title,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'vote_average': instance.voteAverage,
      'release_date': instance.releaseDate,
    };
