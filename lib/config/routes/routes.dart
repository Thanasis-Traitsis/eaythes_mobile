import 'package:eaythes_mobile/features/auth/presentation/home_screen.dart';
import 'package:eaythes_mobile/features/blogs/presentation/blogs_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/utils/routes_utiles.dart';

class AppRouter {
  final GlobalKey<NavigatorState> rootNavigatorKey;

  AppRouter({
    required this.rootNavigatorKey,
  });

  GoRouter get router => GoRouter(
        initialLocation: Pages.home.screenPath,
        navigatorKey: rootNavigatorKey,
        routes: [
          GoRoute(
            parentNavigatorKey: rootNavigatorKey,
            path: Pages.home.screenPath,
            builder: (context, state) => const HomeScreen(),
          ),
          GoRoute(
            parentNavigatorKey: rootNavigatorKey,
            path: Pages.blogs.screenPath,
            builder: (context, state) => const BlogsScreen(),
          ),
        ],
      );
}
