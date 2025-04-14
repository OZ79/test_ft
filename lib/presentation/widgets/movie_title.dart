import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:test_ft/data/models/movie_item.dart';
import 'package:test_ft/domain/enums.dart';
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
          child: _LikeButton(
            isLiked: false,
            onTap: (value) => print(value),
          ),
        ),
      ],
    );
  }
}

class _LikeButton extends StatefulWidget {
  final bool isLiked;
  final ValueChanged<bool> onTap;
  const _LikeButton({required this.isLiked, required this.onTap});

  @override
  State<_LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<_LikeButton> {
  late bool _isLiked;

  @override
  void initState() {
    _isLiked = widget.isLiked;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(
          () => _isLiked = !_isLiked,
        );
        widget.onTap(_isLiked);
      },
      child: Icon(
        size: 25.0,
        _isLiked ? Icons.favorite : Icons.favorite_outline,
        color: Colors.yellow,
      ),
    );
  }
}
