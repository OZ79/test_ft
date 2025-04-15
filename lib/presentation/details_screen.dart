import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_ft/data/favorite_movies_provider.dart';
import 'package:test_ft/data/models/movies_details_response.dart';
import 'package:test_ft/data/repository_impl/movies_repository_impl.dart';
import 'package:test_ft/domain/enums.dart';
import 'package:test_ft/utils/utils.dart';

class DetailsScreen extends ConsumerWidget {
  final String movieId;
  const DetailsScreen({
    super.key,
    required this.movieId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details')),
      body: SafeArea(
        child: Builder(builder: (context) {
          final AsyncValue<MoviesDetailsResponse> responseAsync = ref.watch(fetchMovieDetailsProvider(movieId));
          return responseAsync.when(
            error: (error, stack) => Text(error.toString()),
            loading: () => const Center(child: CircularProgressIndicator()),
            data: (response) {
              return Padding(
                padding: const EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
                child: Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          spacing: 10.0,
                          children: [
                            response.posterPath != null
                                ? Image(
                                    fit: BoxFit.cover,
                                    image: CachedNetworkImageProvider(Utils.getImageUrl(
                                      response.posterPath!,
                                      ImageSize.w154,
                                    )),
                                    frameBuilder: (context, child, frame, sync) {
                                      if (frame == null) {
                                        return const Center(child: CircularProgressIndicator());
                                      }
                                      return child;
                                    })
                                : const SizedBox.expand(),
                            Row(
                              spacing: 15.0,
                              children: [
                                Text(
                                  "Rating: ${response.voteAverage?.toInt()}",
                                  style: Theme.of(context).textTheme.titleLarge!.copyWith(),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  response.releaseDate ?? '',
                                  style: Theme.of(context).textTheme.titleLarge!.copyWith(),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                            Text(
                              response.title ?? '',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              response.overview ?? '',
                              style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 23),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: _AddToFavoriteButton(
                        needAdd: !ref.read(favoriteMoviesProvider.notifier).isFavorite(movieId),
                        onPressed: (value) {
                          final favoriteMovies = ref.read(favoriteMoviesProvider.notifier);
                          if (value) {
                            favoriteMovies.addMovie(movieId);
                          } else {
                            favoriteMovies.removeMovie(movieId);
                          }
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        }),
      ),
    );
  }
}

class _AddToFavoriteButton extends StatefulWidget {
  final bool needAdd;
  final ValueChanged<bool> onPressed;
  const _AddToFavoriteButton({required this.needAdd, required this.onPressed});

  @override
  State<_AddToFavoriteButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<_AddToFavoriteButton> {
  late bool _needAdd;

  @override
  void initState() {
    _needAdd = widget.needAdd;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        widget.onPressed(_needAdd);
        setState(
          () => _needAdd = !_needAdd,
        );
      },
      child:
          Text(_needAdd ? 'Додати в Улюблене' : 'Видалити з Улюбленого', style: Theme.of(context).textTheme.titleLarge),
    );
  }
}
