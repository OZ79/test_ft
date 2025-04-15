// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovieItem {
  int? get id;
  String? get title;
  String? get overview;
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @JsonKey(name: 'vote_average')
  double? get voteAverage;
  @JsonKey(name: 'release_date')
  String? get releaseDate;

  /// Create a copy of MovieItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MovieItemCopyWith<MovieItem> get copyWith =>
      _$MovieItemCopyWithImpl<MovieItem>(this as MovieItem, _$identity);

  /// Serializes this MovieItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MovieItem &&
            (identical(other.id, id) || other.id == id) &&
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
      runtimeType, id, title, overview, posterPath, voteAverage, releaseDate);

  @override
  String toString() {
    return 'MovieItem(id: $id, title: $title, overview: $overview, posterPath: $posterPath, voteAverage: $voteAverage, releaseDate: $releaseDate)';
  }
}

/// @nodoc
abstract mixin class $MovieItemCopyWith<$Res> {
  factory $MovieItemCopyWith(MovieItem value, $Res Function(MovieItem) _then) =
      _$MovieItemCopyWithImpl;
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? overview,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'vote_average') double? voteAverage,
      @JsonKey(name: 'release_date') String? releaseDate});
}

/// @nodoc
class _$MovieItemCopyWithImpl<$Res> implements $MovieItemCopyWith<$Res> {
  _$MovieItemCopyWithImpl(this._self, this._then);

  final MovieItem _self;
  final $Res Function(MovieItem) _then;

  /// Create a copy of MovieItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? overview = freezed,
    Object? posterPath = freezed,
    Object? voteAverage = freezed,
    Object? releaseDate = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _self.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _MovieItem implements MovieItem {
  const _MovieItem(
      {this.id,
      this.title,
      this.overview,
      @JsonKey(name: 'poster_path') this.posterPath,
      @JsonKey(name: 'vote_average') this.voteAverage,
      @JsonKey(name: 'release_date') this.releaseDate});
  factory _MovieItem.fromJson(Map<String, dynamic> json) =>
      _$MovieItemFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? overview;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @override
  @JsonKey(name: 'vote_average')
  final double? voteAverage;
  @override
  @JsonKey(name: 'release_date')
  final String? releaseDate;

  /// Create a copy of MovieItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MovieItemCopyWith<_MovieItem> get copyWith =>
      __$MovieItemCopyWithImpl<_MovieItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MovieItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieItem &&
            (identical(other.id, id) || other.id == id) &&
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
      runtimeType, id, title, overview, posterPath, voteAverage, releaseDate);

  @override
  String toString() {
    return 'MovieItem(id: $id, title: $title, overview: $overview, posterPath: $posterPath, voteAverage: $voteAverage, releaseDate: $releaseDate)';
  }
}

/// @nodoc
abstract mixin class _$MovieItemCopyWith<$Res>
    implements $MovieItemCopyWith<$Res> {
  factory _$MovieItemCopyWith(
          _MovieItem value, $Res Function(_MovieItem) _then) =
      __$MovieItemCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? overview,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'vote_average') double? voteAverage,
      @JsonKey(name: 'release_date') String? releaseDate});
}

/// @nodoc
class __$MovieItemCopyWithImpl<$Res> implements _$MovieItemCopyWith<$Res> {
  __$MovieItemCopyWithImpl(this._self, this._then);

  final _MovieItem _self;
  final $Res Function(_MovieItem) _then;

  /// Create a copy of MovieItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? overview = freezed,
    Object? posterPath = freezed,
    Object? voteAverage = freezed,
    Object? releaseDate = freezed,
  }) {
    return _then(_MovieItem(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _self.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
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
