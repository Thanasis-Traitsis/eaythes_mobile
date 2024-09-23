import 'package:flutter/material.dart';

import 'config/routes/routes.dart';
import 'config/theme/app_theme.dart';
import 'config/theme/colors.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final rootNavigatorKey = GlobalKey<NavigatorState>();

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(AppColors.mainColors).getTheme(),
      routerConfig: AppRouter(
        rootNavigatorKey: rootNavigatorKey,
      ).router,
    );
  }
}
