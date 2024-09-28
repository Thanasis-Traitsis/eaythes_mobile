import 'package:eaythes_mobile/core/scaffold_with_navbar/scaffold_with_navbar.dart';
import 'package:eaythes_mobile/features/auth/presentation/pages/home_screen.dart';
import 'package:eaythes_mobile/features/blogs/presentation/blogs_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/utils/routes_utils.dart';

class AppRouter {
  final GlobalKey<NavigatorState> rootNavigatorKey;

  AppRouter({
    required this.rootNavigatorKey,
  });

  GoRouter get router => GoRouter(
        initialLocation: Pages.home.screenPath,
        navigatorKey: rootNavigatorKey,
        routes: [
          StatefulShellRoute.indexedStack(
            parentNavigatorKey: rootNavigatorKey,
            builder: (context, state, navigationShell) {
              return ScaffoldWithNavBar(navigationShell: navigationShell);
            },
            branches: [
              StatefulShellBranch(
                routes: [
                  GoRoute(
                    path: Pages.home.screenPath,
                    builder: (context, state) => const HomeScreen(),
                  ),
                ],
              ),
              StatefulShellBranch(
                routes: [
                  GoRoute(
                    path: Pages.blogs.screenPath,
                    builder: (context, state) => const BlogsScreen(),
                  ),
                ],
              ),
            ],
          ),
        ],
      );
}
