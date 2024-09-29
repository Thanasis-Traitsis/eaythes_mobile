import 'package:cached_network_image/cached_network_image.dart';
import 'package:eaythes_mobile/core/widgets/custom_title.dart';
import 'package:eaythes_mobile/features/blogs/data/models/blog_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants/styles.dart';
import '../../../../../core/widgets/custom_category_container.dart';

class CarouselSingleItem extends StatelessWidget {
  final BlogModel blog;
  const CarouselSingleItem({super.key, required this.blog});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(spacing),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: CachedNetworkImageProvider(
                  blog.image,
                  cacheKey: blog.id,
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              gradient: LinearGradient(
                stops: const [0, 0.6],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Theme.of(context).primaryColor,
                  Colors.transparent,
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(padding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomCategoryContainer(
                  text: blog.category,
                ),
                const SizedBox(
                  height: spacing,
                ),
                CustomTitle(title: blog.title, isWhite: true),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
