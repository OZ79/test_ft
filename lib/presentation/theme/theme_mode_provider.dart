import 'dart:ui';

import 'package:flutter/scheduler.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test_ft/app_constants.dart';
import 'package:test_ft/data/shared_preferences_provider.dart';

part 'theme_mode_provider.g.dart';

@Riverpod(keepAlive: true)
class ThemeMode extends _$ThemeMode {
  @override
  bool build() {
    final sharedPreferences = ref.read(sharedPreferencesProvider);
    final isLight = sharedPreferences.getBool(AppConstants.themeModeKey);
    if (isLight == null) {
      return SchedulerBinding.instance.platformDispatcher.platformBrightness == Brightness.light;
    } else {
      return isLight;
    }
  }

  void tougle() {
    state = !state;
    final sharedPreferences = ref.read(sharedPreferencesProvider);
    sharedPreferences.setBool(AppConstants.themeModeKey, state);
  }
}
