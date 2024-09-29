import 'package:eaythes_mobile/features/auth/presentation/auth_bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'config/routes/routes.dart';
import 'config/theme/app_theme.dart';
import 'config/theme/colors.dart';
import 'features/auth/presentation/widgets/carousel/carousel_bloc/carousel_bloc.dart';
import 'features/blogs/presentation/blogs_bloc/blogs_bloc.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc()..add(AppStarted()),
        ),
        BlocProvider<BlogsBloc>(
          create: (context) => BlogsBloc()..add(FetchAllBlogs()),
        ),
        BlocProvider<CarouselBloc>(create: (context) => CarouselBloc()),
      ],
      child: const MainApp(),
    ),
  );
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
