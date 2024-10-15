import 'package:eaythes_mobile/core/constants/styles.dart';
import 'package:eaythes_mobile/features/auth/presentation/pages/home_screen_loading.dart';
import 'package:eaythes_mobile/features/auth/presentation/widgets/home_blogs/home_blogs_container.dart';
import 'package:eaythes_mobile/features/blogs/data/models/blog_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/custom_gap.dart';
import '../../../blogs/presentation/blogs_bloc/blogs_bloc.dart';
import '../home_blogs_bloc/home_blogs_bloc.dart';
import '../widgets/carousel/custom_carousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<BlogModel> recentBlogs = [];
    return BlocBuilder<HomeBlogsBloc, BlogsState>(
      builder: (context, state) {
        if (state is BlogsFetchAll) {
          recentBlogs = state.blogs;
        }
        return state is BlogsInitialLoading
            ? const HomeScreenLoading()
            : GestureDetector(
                onTap: () {
                  FocusScope.of(context).unfocus();
                },
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CustomCarousel(
                        recentList: recentBlogs,
                      ),
                      const CustomGap(
                        height: spacing * 2,
                      ),
                      const HomeBlogsContainer(),
                    ],
                  ),
                ),
              );
      },
    );
  }
}
