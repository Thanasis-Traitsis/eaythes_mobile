import 'package:eaythes_mobile/features/auth/presentation/widgets/carousel/custom_carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blogs/presentation/blogs_bloc/blogs_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlogsBloc, BlogsState>(
      builder: (context, state) {
        return Column(
          children: [
            CustomCarousel(
              recentList: state is BlogsFetchAll ? state.blogs : [],
            ),
          ],
        );
      },
    );
  }
}
