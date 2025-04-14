import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_ft/presentation/details_screen.dart';
import 'package:test_ft/presentation/search_screen.dart';
import 'package:test_ft/presentation/top_rated_screen.dart';

class ScreenPaths {
  static String homePage = '/';
  static String details = '/details';
  static String search = '/search';
}

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: ScreenPaths.homePage,
      builder: (BuildContext context, _) {
        return const TopRatedScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: ScreenPaths.details,
          builder: (BuildContext context, GoRouterState state) {
            return DetailsScreen(
              movieId: state.extra.toString(),
            );
          },
        ),
        GoRoute(
          path: ScreenPaths.search,
          builder: (BuildContext context, _) {
            return const SearchScreen();
          },
        ),
      ],
    ),
  ],
);
