import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_ft/data/models/movies_response.dart';
import 'package:test_ft/data/repository_impl/movies_repository_impl.dart';
import 'package:test_ft/generated/assets/assets.gen.dart';
import 'package:test_ft/presentation/top_rated_screen.dart';
import 'package:test_ft/presentation/widgets/movie_title.dart';
import 'package:test_ft/utils/debouncer.dart';

const kLikeDebouncerMilliseconds = 700;

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({super.key});

  @override
  ConsumerState<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  final _controller = TextEditingController();
  final _debouncer = Debouncer(milliseconds: kLikeDebouncerMilliseconds);
  String? _query;

  @override
  void dispose() {
    _controller.dispose();
    _debouncer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isLightMode = Theme.of(context).brightness == Brightness.light;
    final colorFilter = ColorFilter.mode(isLightMode ? Colors.black : Colors.white, BlendMode.srcIn);
    return Scaffold(
        appBar: AppBar(title: const Text('Search Movie')),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      Assets.icons.searchIcon,
                      width: 28,
                      height: 28,
                      colorFilter: colorFilter,
                    ),
                    const SizedBox(width: 10.0),
                    Expanded(
                      child: Center(
                        child: TextField(
                          controller: _controller,
                          style: Theme.of(context).textTheme.titleLarge!,
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            contentPadding: EdgeInsets.zero,
                            isDense: true,
                            hintText: 'Search movies',
                            hintStyle: Theme.of(context).textTheme.titleLarge!,
                          ),
                          onEditingComplete: () {
                            FocusManager.instance.primaryFocus?.unfocus();
                          },
                          onChanged: (text) {
                            if (text.length >= 3) {
                              _debouncer.run(() {
                                setState(() {
                                  _query = text;
                                });
                              });
                            }
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: GridView.builder(
                    padding: const EdgeInsets.only(top: 10.0, left: 5.0, right: 5.0),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.46,
                      mainAxisSpacing: 15,
                    ),
                    itemBuilder: (context, index) {
                      if (_query == null) {
                        return const SizedBox.expand();
                      }
                      final page = index ~/ pageSize + 1;
                      final indexInPage = index % pageSize;
                      final AsyncValue<MoviesResponse> responseAsync =
                          ref.watch(fetchtSearchMoviesProvider(page, _query!));
                      return responseAsync.when(
                        error: (error, stack) {
                          print(error);
                          print(stack);
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
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
