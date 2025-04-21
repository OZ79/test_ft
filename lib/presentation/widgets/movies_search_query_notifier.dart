import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'movies_search_query_notifier.g.dart';

@riverpod
class MoviesSearchQueryNotifier extends _$MoviesSearchQueryNotifier {
  @override
  String? build() {
    return null;
  }

  void setQuery(String query) {
    state = query;
  }
}
