import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_ft/data/favorite_movies_provider.dart';
import 'package:test_ft/data/models/movie_item.dart';
import 'package:test_ft/domain/enums.dart';
import 'package:test_ft/presentation/widgets/like_button.dart';
import 'package:test_ft/utils/utils.dart';

class MovieTile extends StatelessWidget {
  final MovieItem movieItem;
  const MovieTile({
    super.key,
    required this.movieItem,
  });

  @override
  Widget build(BuildContext context) {
    final imageUrl = Utils.getImageUrl(movieItem.posterPath!, ImageSize.w92);
    return Stack(
      children: [
        Column(
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
                  width: 165.0,
                  child: Text(
                    movieItem.title,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  'Rating: ${movieItem.voteAverage?.toInt()}',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
          ],
        ),
        Positioned(
          top: 10.0,
          right: 10.0,
          child: Consumer(
            builder: (BuildContext context, WidgetRef ref, Widget? child) {
              final favoriteMovies = ref.watch(favoriteMoviesProvider);
              final isLiked = favoriteMovies.contains(movieItem.id.toString());
              return LikeButton(
                isLiked: isLiked,
                onTap: (value) {
                  if (value) {
                    ref.read(favoriteMoviesProvider.notifier).addMovie(movieItem.id.toString());
                  } else {
                    ref.read(favoriteMoviesProvider.notifier).removeMovie(movieItem.id.toString());
                  }
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
