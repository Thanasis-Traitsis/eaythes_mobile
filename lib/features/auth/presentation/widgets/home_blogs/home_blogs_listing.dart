import 'package:eaythes_mobile/features/blogs/data/models/blog_model.dart';
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
          List<BlogModel> list = [];

          if (state is BlogsFetchAll) {
            list = state.blogs;
          }

          if (state is BlogsFiltered) {
            list = state.filteredBlogs;
          }

          return Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                children: List.generate(
                  list.length,
                  (index) {
                    var blog = list[index];
                    return BlogListingView(
                      id: blog.id,
                      title: blog.title,
                      img: blog.image,
                      category: blog.category,
                      date: blog.date,
                    );
                  },
                ),
              ),
              list.length > 10 ? const ReadMoreTextButton() : Container()
            ],
          );
        },
      ),
    );
  }
}
