import 'package:eaythes_mobile/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/usecases/calculate_size.dart';
import 'carousel_bloc/carousel_bloc.dart';

class CarouselPageIndicator extends StatelessWidget {
  final int indicatorsCount;
  const CarouselPageIndicator({
    super.key,
    required this.indicatorsCount,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CarouselBloc, CarouselState>(
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.only(left: spacing),
          child: Row(
            children: List.generate(
              indicatorsCount,
              (index) => AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                width: state.currentIndex == index
                    ? calculateSize(context, carouselIndicatorSize) * 2
                    : calculateSize(context, carouselIndicatorSize),
                height: calculateSize(context, carouselIndicatorSize),
                margin: const EdgeInsets.symmetric(
                  horizontal: carouselIndicatorSize / 4,
                ),
                decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.all(Radius.circular(borderRadius / 4)),
                  color: state.currentIndex == index
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).disabledColor,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
