import 'package:eaythes_mobile/core/constants/constants.dart';
import 'package:eaythes_mobile/features/auth/presentation/widgets/carousel/carousel_bloc/carousel_bloc.dart';
import 'package:eaythes_mobile/features/auth/presentation/widgets/carousel/carousel_page_indicator.dart';
import 'package:flutter/material.dart';

import 'package:eaythes_mobile/features/auth/presentation/widgets/carousel/carousel_single_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/styles.dart';
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

  @override
  void initState() {
    super.initState();

    _controller.addListener(() {
      int nextPage = _controller.page?.round() ?? 0;

      BlocProvider.of<CarouselBloc>(context)
          .add(ChangeIndicator(current: nextPage));
    });
  }

  @override
  Widget build(BuildContext context) {
    int recentCount = widget.recentList.length > recentBlogs
        ? recentBlogs
        : widget.recentList.length;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: carouselHeight,
          child: PageView.builder(
            controller: _controller,
            itemCount: recentCount,
            itemBuilder: (context, index) {
              return CarouselSingleItem(blog: widget.recentList[index]);
            },
          ),
        ),
        CarouselPageIndicator(
          indicatorsCount: recentCount,
        )
      ],
    );
  }
}
