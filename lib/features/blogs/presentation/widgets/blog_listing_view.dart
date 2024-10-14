import 'package:cached_network_image/cached_network_image.dart';
import 'package:eaythes_mobile/config/theme/responsive_text.dart';
import 'package:eaythes_mobile/core/usecases/transform_date_extension.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/styles.dart';
import 'blog_date_post.dart';

class BlogListingView extends StatelessWidget {
  final String id;
  final String title;
  final String img;
  final String category;
  final String date;

  const BlogListingView({
    super.key,
    required this.id,
    required this.title,
    required this.img,
    required this.category,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: spacing),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: blogImageHeight,
            width: blogImageHeight,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: CachedNetworkImageProvider(
                  img,
                  cacheKey: id,
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(borderRadius / 2),
            ),
          ),
          const SizedBox(
            width: spacing,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ResponsiveText(
                text: category,
                style: Theme.of(context).textTheme.bodySmall!,
              ),
              const SizedBox(
                height: spacing / 2,
              ),
              ResponsiveText(
                text: title,
                style: Theme.of(context).textTheme.titleLarge!,
              ),
              BlogDatePost(
                date: date.timeAgo(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
