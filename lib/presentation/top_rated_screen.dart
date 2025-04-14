import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_ft/data/models/movies_response.dart';
import 'package:test_ft/data/repository_impl/movies_repository_impl.dart';
import 'package:test_ft/presentation/widgets/movie_title.dart';

const pageSize = 20;

class TopRatedScreen extends ConsumerWidget {
  const TopRatedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GridView.builder(
      padding: const EdgeInsets.only(top: 20.0, left: 5.0, right: 5.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.62,
        mainAxisSpacing: 15,
      ),
      itemBuilder: (context, index) {
        final page = index ~/ pageSize + 1;
        final indexInPage = index % pageSize;
        final AsyncValue<MoviesResponse> responseAsync = ref.watch(fetchTopRatedMoviesProvider(page));
        return responseAsync.when(
          error: (error, stack) => Text(error.toString()),
          loading: () => const Center(child: CircularProgressIndicator()),
          data: (response) {
            if (indexInPage >= response.results.length) {
              return null;
            }
            final movie = response.results[indexInPage];
            return Center(
              child: MovieTile(
                movieItem: movie,
              ),
            );
          },
        );
      },
    );
  }
}
