import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test_ft/app_constants.dart';
import 'package:test_ft/data/shared_preferences_provider.dart';

part 'favorite_movies_provider.g.dart';

@Riverpod(keepAlive: true)
class FavoriteMovies extends _$FavoriteMovies {
  @override
  List<String> build() {
    final sharedPreferences = ref.read(sharedPreferencesProvider);
    final favoriteMovies = sharedPreferences.getStringList(AppConstants.favoriteMoviesKey);
    if (favoriteMovies == null) {
      return [];
    } else {
      return favoriteMovies;
    }
  }

  void addMovie(String movieId) {
    state = [...state, movieId];
    saveToPersistentStorage();
  }

  void removeMovie(String movieId) {
    state = [
      for (final id in state)
        if (id != movieId) id,
    ];
    saveToPersistentStorage();
  }

  bool isFavorite(String movieId) {
    return state.contains(movieId);
  }

  void saveToPersistentStorage() {
    final sharedPreferences = ref.read(sharedPreferencesProvider);
    sharedPreferences.setStringList(AppConstants.favoriteMoviesKey, state);
  }
}
