import 'package:eaythes_mobile/core/constants/sizes.dart';
import 'package:eaythes_mobile/core/usecases/calculate_size.dart';
import 'package:flutter/material.dart';

import '../../../../config/theme/responsive_text.dart';
import '../../../../core/constants/styles.dart';
import '../../../../core/widgets/custom_gap.dart';

class BlogDatePost extends StatelessWidget {
  final String date;

  const BlogDatePost({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.timelapse,
          color: Theme.of(context).primaryColor,
          size: calculateSize(context, AppValues().smallIconSize),
        ),
        const CustomGap(
          width: spacing / 2,
        ),
        Expanded(
          child: ResponsiveText(
            maxLines: 1,
            text: date,
            style: Theme.of(context).textTheme.bodySmall!,
          ),
        ),
      ],
    );
  }
}
