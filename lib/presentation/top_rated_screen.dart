import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_ft/data/models/movie_item.dart';
import 'package:test_ft/data/models/movies_response.dart';
import 'package:test_ft/data/repository_impl/movies_repository_impl.dart';
import 'package:test_ft/domain/enums.dart';
import 'package:test_ft/utils/utils.dart';

const pageSize = 20;

class TopRatedScreen extends ConsumerWidget {
  const TopRatedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GridView.builder(
      padding: const EdgeInsets.only(top: 20.0, left: 5.0, right: 5.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.61,
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

class MovieTile extends StatelessWidget {
  final MovieItem movieItem;
  const MovieTile({
    super.key,
    required this.movieItem,
  });

  @override
  Widget build(BuildContext context) {
    final imageUrl = Utils.getImageUrl(movieItem.posterPath!, ImageSize.w92);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 5.0,
      children: [
        Expanded(
          child: ClipRRect(
            clipBehavior: Clip.hardEdge,
            borderRadius: const BorderRadius.all(
              Radius.circular(15.0),
            ),
            child: Image(
                fit: BoxFit.cover,
                image: CachedNetworkImageProvider(imageUrl),
                frameBuilder: (context, child, frame, sync) {
                  if (frame == null) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  return child;
                }),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 170.0,
              child: Text(
                movieItem.title,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text(
              'Rating: ${movieItem.voteAverage?.toInt()}',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ],
    );
  }
}
