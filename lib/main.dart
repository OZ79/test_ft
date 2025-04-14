import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_ft/generated/assets/assets.gen.dart';
import 'package:test_ft/presentation/theme/app_theme.dart';
import 'package:test_ft/presentation/top_rated_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: App()));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie app',
      theme: AppTheme.lightTheme,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Movie'),
          actions: <Widget>[
            IconButton(
              icon: SvgPicture.asset(
                Assets.icons.searchIcon,
                width: 28,
                height: 28,
              ),
              onPressed: () {},
            ),
            const SizedBox(
              width: 8,
            ),
            IconButton(
              icon: SvgPicture.asset(
                Assets.icons.sunIcon,
                width: 28,
                height: 28,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: const SafeArea(
          child: TopRatedScreen(),
        ),
      ),
    );
  }
}
