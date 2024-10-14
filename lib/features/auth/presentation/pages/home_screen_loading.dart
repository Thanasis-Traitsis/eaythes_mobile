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
          const SizedBox(
            height: spacing * 2,
          ),
          Container(
            height: 40,
            margin: const EdgeInsets.symmetric(horizontal: spacing),
            child: CustomShimmerEffect(radius: borderRadius / 2),
          ),
          const SizedBox(
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
                          height: blogImageHeight,
                          width: blogImageHeight,
                          child: CustomShimmerEffect(radius: borderRadius / 2),
                        ),
                        const SizedBox(
                          width: spacing,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 15,
                                width: 200,
                                child: CustomShimmerEffect(
                                    radius: borderRadius / 3),
                              ),
                              const SizedBox(
                                height: spacing,
                              ),
                              SizedBox(
                                height: 30,
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
