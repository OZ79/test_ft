import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_ft/data/models/movie_item.dart';
import 'package:test_ft/data/models/movies_response.dart';
import 'package:test_ft/data/repository_impl/movies_repository_impl.dart';
import 'package:test_ft/domain/enums.dart';
import 'package:test_ft/utils/utils.dart';

class TopRatedScreen extends ConsumerWidget {
  static const pageSize = 20;
  const TopRatedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.builder(
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

class MovieTile extends StatelessWidget {
  final MovieItem movieItem;
  const MovieTile({
    super.key,
    required this.movieItem,
  });

  @override
  Widget build(BuildContext context) {
    final imageUrl = Utils.getImageUrl(movieItem.posterPath!, ImageSize.w92);
    return SizedBox(
      height: 270.0,
      child: ClipRRect(
        clipBehavior: Clip.hardEdge,
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
        child: Image(
          fit: BoxFit.cover,
          image: CachedNetworkImageProvider(imageUrl),
        ),
      ),
    );
  }
}
