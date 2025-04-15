// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movies_details_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MoviesDetailsResponse {
  String get title;
  String get overview;
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @JsonKey(name: 'vote_average')
  double? get voteAverage;
  @JsonKey(name: 'release_date')
  String? get releaseDate;

  /// Create a copy of MoviesDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MoviesDetailsResponseCopyWith<MoviesDetailsResponse> get copyWith =>
      _$MoviesDetailsResponseCopyWithImpl<MoviesDetailsResponse>(
          this as MoviesDetailsResponse, _$identity);

  /// Serializes this MoviesDetailsResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MoviesDetailsResponse &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, overview, posterPath, voteAverage, releaseDate);

  @override
  String toString() {
    return 'MoviesDetailsResponse(title: $title, overview: $overview, posterPath: $posterPath, voteAverage: $voteAverage, releaseDate: $releaseDate)';
  }
}

/// @nodoc
abstract mixin class $MoviesDetailsResponseCopyWith<$Res> {
  factory $MoviesDetailsResponseCopyWith(MoviesDetailsResponse value,
          $Res Function(MoviesDetailsResponse) _then) =
      _$MoviesDetailsResponseCopyWithImpl;
  @useResult
  $Res call(
      {String title,
      String overview,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'vote_average') double? voteAverage,
      @JsonKey(name: 'release_date') String? releaseDate});
}

/// @nodoc
class _$MoviesDetailsResponseCopyWithImpl<$Res>
    implements $MoviesDetailsResponseCopyWith<$Res> {
  _$MoviesDetailsResponseCopyWithImpl(this._self, this._then);

  final MoviesDetailsResponse _self;
  final $Res Function(MoviesDetailsResponse) _then;

  /// Create a copy of MoviesDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? overview = null,
    Object? posterPath = freezed,
    Object? voteAverage = freezed,
    Object? releaseDate = freezed,
  }) {
    return _then(_self.copyWith(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _self.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: freezed == posterPath
          ? _self.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: freezed == voteAverage
          ? _self.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      releaseDate: freezed == releaseDate
          ? _self.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _MoviesDetailsResponse implements MoviesDetailsResponse {
  const _MoviesDetailsResponse(
      {required this.title,
      required this.overview,
      @JsonKey(name: 'poster_path') this.posterPath,
      @JsonKey(name: 'vote_average') this.voteAverage,
      @JsonKey(name: 'release_date') this.releaseDate});
  factory _MoviesDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$MoviesDetailsResponseFromJson(json);

  @override
  final String title;
  @override
  final String overview;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @override
  @JsonKey(name: 'vote_average')
  final double? voteAverage;
  @override
  @JsonKey(name: 'release_date')
  final String? releaseDate;

  /// Create a copy of MoviesDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MoviesDetailsResponseCopyWith<_MoviesDetailsResponse> get copyWith =>
      __$MoviesDetailsResponseCopyWithImpl<_MoviesDetailsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MoviesDetailsResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MoviesDetailsResponse &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, overview, posterPath, voteAverage, releaseDate);

  @override
  String toString() {
    return 'MoviesDetailsResponse(title: $title, overview: $overview, posterPath: $posterPath, voteAverage: $voteAverage, releaseDate: $releaseDate)';
  }
}

/// @nodoc
abstract mixin class _$MoviesDetailsResponseCopyWith<$Res>
    implements $MoviesDetailsResponseCopyWith<$Res> {
  factory _$MoviesDetailsResponseCopyWith(_MoviesDetailsResponse value,
          $Res Function(_MoviesDetailsResponse) _then) =
      __$MoviesDetailsResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String title,
      String overview,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'vote_average') double? voteAverage,
      @JsonKey(name: 'release_date') String? releaseDate});
}

/// @nodoc
class __$MoviesDetailsResponseCopyWithImpl<$Res>
    implements _$MoviesDetailsResponseCopyWith<$Res> {
  __$MoviesDetailsResponseCopyWithImpl(this._self, this._then);

  final _MoviesDetailsResponse _self;
  final $Res Function(_MoviesDetailsResponse) _then;

  /// Create a copy of MoviesDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
    Object? overview = null,
    Object? posterPath = freezed,
    Object? voteAverage = freezed,
    Object? releaseDate = freezed,
  }) {
    return _then(_MoviesDetailsResponse(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _self.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: freezed == posterPath
          ? _self.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: freezed == voteAverage
          ? _self.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      releaseDate: freezed == releaseDate
          ? _self.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
