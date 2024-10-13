import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/styles.dart';
import '../../../../blogs/presentation/blogs_bloc/blogs_bloc.dart';
import '../../../../blogs/presentation/widgets/blog_listing_view.dart';
import '../../home_blogs_bloc/home_blogs_bloc.dart';
import 'read_more_text_button.dart';

class HomeBlogsListing extends StatelessWidget {
  const HomeBlogsListing({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: spacing),
      child: BlocBuilder<HomeBlogsBloc, BlogsState>(
        builder: (context, state) {
          if (state is BlogsFetchAll) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  children: List.generate(
                    state.blogs.length,
                    (index) {
                      var blog = state.blogs[index];
                      return BlogListingView(
                        title: blog.title,
                        img: blog.image,
                        category: blog.category,
                        date: blog.id,
                        id: blog.id,
                      );
                    },
                  ),
                ),
                const ReadMoreTextButton(),
              ],
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
