import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_ft/data/shared_preferences_provider.dart';
import 'package:test_ft/presentation/app_router.dart';
import 'package:test_ft/presentation/theme/app_theme.dart';
import 'package:test_ft/presentation/theme/theme_mode_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sharedPreferences = await SharedPreferences.getInstance();
  runApp(ProviderScope(
    overrides: [sharedPreferencesProvider.overrideWithValue(sharedPreferences)],
    child: const App(),
  ));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_, WidgetRef ref, __) {
        final isLightTheme = ref.watch(themeModeProvider);
        return MaterialApp.router(
          title: 'Movie App',
          theme: isLightTheme ? AppTheme.lightTheme : AppTheme.darkTheme,
          darkTheme: AppTheme.darkTheme,
          routerConfig: router,
        );
      },
    );
  }
}
