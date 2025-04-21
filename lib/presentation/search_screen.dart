import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_ft/data/models/movies_response.dart';
import 'package:test_ft/data/repository_impl/movies_repository_impl.dart';
import 'package:test_ft/presentation/top_rated_screen.dart';
import 'package:test_ft/presentation/widgets/movie_title.dart';
import 'package:test_ft/presentation/widgets/movies_search_query_notifier.dart';
import 'package:test_ft/presentation/widgets/search_field.dart';

const kLikeDebouncerMilliseconds = 400;

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Search Movie')),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
            child: Column(
              spacing: 10.0,
              children: [
                const SearchField(),
                Expanded(
                  child: Consumer(builder: (BuildContext context, WidgetRef ref, Widget? child) {
                    final query = ref.watch(moviesSearchQueryNotifierProvider);
                    return query == null
                        ? const SizedBox.expand()
                        : GridView.builder(
                            key: ValueKey(query),
                            padding: const EdgeInsets.only(top: 10.0, left: 5.0, right: 5.0),
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 0.5,
                              mainAxisSpacing: 15,
                            ),
                            itemBuilder: (context, index) {
                              final page = index ~/ kPageSize + 1;
                              final indexInPage = index % kPageSize;
                              final AsyncValue<MoviesResponse> responseAsync =
                                  ref.watch(fetchtSearchMoviesProvider(page, query));
                              return responseAsync.when(
                                error: (error, stack) {
                                  return Text(error.toString());
                                },
                                loading: () => const Center(child: CircularProgressIndicator()),
                                data: (response) {
                                  if (indexInPage >= response.results.length) {
                                    return null;
                                  }
                                  final movie = response.results[indexInPage];
                                  return MovieTile(
                                    movieItem: movie,
                                    isExpanded: true,
                                  );
                                },
                              );
                            },
                          );
                  }),
                ),
              ],
            ),
          ),
        ));
  }
}
