import 'package:eaythes_mobile/core/constants/constants.dart';
import 'package:flutter/material.dart';

import 'package:eaythes_mobile/features/auth/presentation/widgets/carousel/carousel_single_item.dart';

import '../../../../blogs/data/models/blog_model.dart';

class CustomCarousel extends StatefulWidget {
  final List<BlogModel> recentList;

  const CustomCarousel({
    super.key,
    required this.recentList,
  });

  @override
  State<CustomCarousel> createState() => _CustomCarouselState();
}

class _CustomCarouselState extends State<CustomCarousel> {
  final PageController _controller = PageController();
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();

    _controller.addListener(() {
      int nextPage = _controller.page?.round() ?? 0;
      if (nextPage != _currentIndex) {
        setState(() {
          _currentIndex = nextPage;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.recentList.isNotEmpty
        ? SizedBox(
            height: 200,
            child: PageView.builder(
              controller: _controller,
              itemCount: widget.recentList.length > recentBlogs
                  ? recentBlogs
                  : widget.recentList.length,
              itemBuilder: (context, index) {
                return CarouselSingleItem(blog: widget.recentList[index]);
              },
            ),
          )
        : Container();
  }
}
