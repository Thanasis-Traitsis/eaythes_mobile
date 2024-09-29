import 'package:eaythes_mobile/config/theme/responsive_text.dart';
import 'package:flutter/material.dart';

class BlogsScreen extends StatelessWidget {
  const BlogsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ResponsiveText(
        text: 'Blog Page',
        style: Theme.of(context).textTheme.titleLarge!,
      ),
    );
  }
}
