// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MoviesResponse _$MoviesResponseFromJson(Map<String, dynamic> json) =>
    _MoviesResponse(
      page: (json['page'] as num).toInt(),
      results: (json['results'] as List<dynamic>)
          .map((e) => MovieItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalResults: (json['total_results'] as num).toInt(),
      totalPages: (json['total_pages'] as num).toInt(),
    );

Map<String, dynamic> _$MoviesResponseToJson(_MoviesResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_results': instance.totalResults,
      'total_pages': instance.totalPages,
    };
