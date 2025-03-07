import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'config/routes/routes.dart';
import 'config/theme/app_theme.dart';
import 'config/theme/colors.dart';
import 'features/auth/presentation/auth_bloc/auth_bloc.dart';
import 'features/auth/presentation/home_blogs_bloc/home_blogs_bloc.dart';
import 'features/auth/presentation/widgets/carousel/carousel_bloc/carousel_bloc.dart';
import 'features/blogs/presentation/blogs_bloc/blogs_bloc.dart';
import 'features/blogs/presentation/category_bloc/category_bloc.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc()..add(AppStarted()),
        ),
        BlocProvider<BlogsBloc>(
          create: (context) => BlogsBloc(),
        ),
        BlocProvider<HomeBlogsBloc>(
          create: (context) => HomeBlogsBloc()..add(FetchAllBlogs()),
        ),
        BlocProvider<CarouselBloc>(create: (context) => CarouselBloc()),
        BlocProvider<CategoryBloc>(
          create: (context) => CategoryBloc()..add(FetchAllCategories()),
        ),
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
