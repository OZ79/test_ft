import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_ft/data/models/movie_item.dart';
import 'package:test_ft/data/models/movies_response.dart';
import 'package:test_ft/data/repository_impl/movies_repository_impl.dart';
import 'package:test_ft/domain/enums.dart';
import 'package:test_ft/utils/utils.dart';

const imageHeight = 300.0;
const pageSize = 20;

class TopRatedScreen extends ConsumerWidget {
  const TopRatedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.73,
        mainAxisSpacing: 15,
      ),
      itemBuilder: (context, index) {
        final page = index ~/ pageSize + 1;
        final indexInPage = index % pageSize;
        final AsyncValue<MoviesResponse> responseAsync = ref.watch(fetchTopRatedMoviesProvider(page));
        return responseAsync.when(
          error: (error, stack) => Text(error.toString()),
          loading: () => const SizedBox(
              height: imageHeight,
              child: Center(
                child: CircularProgressIndicator(),
              )),
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
      height: imageHeight,
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
    );
  }
}
