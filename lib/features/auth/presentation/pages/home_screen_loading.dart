import 'package:eaythes_mobile/core/usecases/calculate_size.dart';
import 'package:eaythes_mobile/core/widgets/custom_gap.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/styles.dart';
import '../../../../core/widgets/custom_shimmer_effect.dart';

class HomeScreenLoading extends StatelessWidget {
  const HomeScreenLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: carouselHeight,
            margin: const EdgeInsets.all(spacing),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            child: CustomShimmerEffect(radius: borderRadius),
          ),
          const CustomGap(
            height: spacing * 2,
          ),
          Container(
            height: searchbarHeight,
            margin: const EdgeInsets.symmetric(horizontal: spacing),
            child: CustomShimmerEffect(radius: borderRadius / 2),
          ),
          const CustomGap(
            height: spacing * 2,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: spacing),
            child: Column(
              children: List.generate(
                5,
                (index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: spacing),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: calculateSize(context, blogImageHeight),
                          width: calculateSize(context, blogImageHeight),
                          child: CustomShimmerEffect(radius: borderRadius / 2),
                        ),
                        const CustomGap(
                          width: spacing,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: calculateSize(context, 15),
                                width: calculateSize(context, 200),
                                child: CustomShimmerEffect(
                                    radius: borderRadius / 3),
                              ),
                              const CustomGap(
                                height: spacing,
                              ),
                              SizedBox(
                                height: calculateSize(context, 30),
                                width: double.infinity,
                                child: CustomShimmerEffect(
                                    radius: borderRadius / 3),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
