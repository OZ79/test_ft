import 'package:flutter/material.dart';
import 'package:test_ft/app_constants.dart';
import 'package:test_ft/domain/enums.dart';

class Utils {
  static bool isDarkMode(BuildContext context) => Theme.of(context).brightness == Brightness.dark;

  static bool isLightMode(BuildContext context) => Theme.of(context).brightness == Brightness.light;

  static String getImageUrl(String path, ImageSize imageSize) {
    return "${AppConstants.baseImageUrl}${imageSize.name}$path}";
  }
}
