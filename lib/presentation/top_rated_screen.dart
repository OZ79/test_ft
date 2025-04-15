import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:test_ft/data/models/movies_response.dart';
import 'package:test_ft/data/repository_impl/movies_repository_impl.dart';
import 'package:test_ft/generated/assets/assets.gen.dart';
import 'package:test_ft/presentation/app_router.dart';
import 'package:test_ft/presentation/theme/theme_mode_provider.dart';
import 'package:test_ft/presentation/widgets/movie_title.dart';
import 'package:test_ft/utils/utils.dart';

const kPageSize = 20;

class TopRatedScreen extends ConsumerWidget {
  const TopRatedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorFilter = ColorFilter.mode(
      Utils.isLightMode(context) ? Colors.black : Colors.white,
      BlendMode.srcIn,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie'),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              Assets.icons.searchIcon,
              width: 28,
              height: 28,
              colorFilter: colorFilter,
            ),
            onPressed: () => context.go(ScreenPaths.search),
          ),
          const SizedBox(
            width: 8,
          ),
          IconButton(
            icon: SvgPicture.asset(
              Assets.icons.sunIcon,
              width: 28,
              height: 28,
              colorFilter: colorFilter,
            ),
            onPressed: () => ref.read(themeModeProvider.notifier).tougle(),
          ),
        ],
      ),
      body: SafeArea(
        child: GridView.builder(
          padding: const EdgeInsets.only(top: 20.0, left: 5.0, right: 5.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.62,
            mainAxisSpacing: 15,
          ),
          itemBuilder: (context, index) {
            final page = index ~/ kPageSize + 1;
            final indexInPage = index % kPageSize;
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
                  child: GestureDetector(
                    onTap: () => context.go(ScreenPaths.details, extra: movie.id),
                    child: MovieTile(
                      movieItem: movie,
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
