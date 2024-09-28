import 'package:cached_network_image/cached_network_image.dart';
import 'package:eaythes_mobile/features/blogs/data/models/blog_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants/styles.dart';

class CarouselSingleItem extends StatelessWidget {
  final BlogModel blog;
  const CarouselSingleItem({super.key, required this.blog});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(spacing),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: CachedNetworkImageProvider(
            blog.image,
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(
          borderRadius,
        ),
      ),
      child: Center(
        child: Text(blog.id),
      ),
    );
  }
}
