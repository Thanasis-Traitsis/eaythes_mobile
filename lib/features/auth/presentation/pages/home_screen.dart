import 'package:eaythes_mobile/core/constants/styles.dart';
import 'package:eaythes_mobile/features/auth/presentation/widgets/home_blogs/home_blogs_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blogs/presentation/blogs_bloc/blogs_bloc.dart';
import '../home_blogs_bloc/home_blogs_bloc.dart';
import '../widgets/carousel/custom_carousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBlogsBloc, BlogsState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            children: [
              CustomCarousel(
                recentList: state is BlogsFetchAll ? state.blogs : [],
              ),
              const SizedBox(
                height: spacing * 2,
              ),
              const HomeBlogsContainer(),
            ],
          ),
        );
      },
    );
  }
}
