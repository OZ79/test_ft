import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_ft/generated/assets/assets.gen.dart';
import 'package:test_ft/presentation/widgets/movies_search_query_notifier.dart';
import 'package:test_ft/utils/debouncer.dart';
import 'package:test_ft/utils/extensions.dart';

const kLikeDebouncerMilliseconds = 400;

class SearchField extends ConsumerStatefulWidget {
  const SearchField({super.key});

  @override
  ConsumerState<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends ConsumerState<SearchField> {
  final _controller = TextEditingController();
  final _debouncer = Debouncer(milliseconds: kLikeDebouncerMilliseconds);

  @override
  void dispose() {
    _controller.dispose();
    _debouncer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          Assets.icons.searchIcon,
          width: 28,
          height: 28,
          colorFilter: ColorFilter.mode(
            context.isLightMode ? Colors.black : Colors.white,
            BlendMode.srcIn,
          ),
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
              onChanged: (text) {
                if (text.length >= 3) {
                  _debouncer.run(() {
                    ref.read(moviesSearchQueryNotifierProvider.notifier).setQuery(text);
                  });
                }
              },
            ),
          ),
        ),
      ],
    );
  }
}
