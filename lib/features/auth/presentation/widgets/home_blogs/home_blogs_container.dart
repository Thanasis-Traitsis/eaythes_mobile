import 'package:eaythes_mobile/features/auth/presentation/widgets/home_blogs/search_container/search_and_filter_container.dart';
import 'package:flutter/material.dart';

import 'home_blogs_listing.dart';

class HomeBlogsContainer extends StatelessWidget {
  const HomeBlogsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SearchAndFilterContainer(),
        HomeBlogsListing(),
      ],
    );
  }
}
