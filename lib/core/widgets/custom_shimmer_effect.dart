import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../config/theme/colors.dart';

Widget CustomShimmerEffect({double? radius}) {
  return Shimmer.fromColors(
    baseColor: AppColors.mainColors.lightPrimary.withOpacity(0.5),
    highlightColor: AppColors.mainColors.lightPrimary.withOpacity(0.2),
    child: Container(
      decoration: BoxDecoration(
        color: AppColors.mainColors.whiteColor,
        borderRadius: radius != null ? BorderRadius.circular(radius) : null,
      ),
    ),
  );
}
