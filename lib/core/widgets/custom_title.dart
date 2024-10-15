// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:eaythes_mobile/core/constants/sizes.dart';
import 'package:flutter/material.dart';

import 'package:eaythes_mobile/config/theme/responsive_text.dart';

class CustomTitle extends StatelessWidget {
  final String title;
  final bool isWhite;
  final bool isCarousel;

  const CustomTitle({
    super.key,
    required this.title,
    this.isWhite = false,
    this.isCarousel = false,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveText(
      maxLines: isCarousel ? 4 : null,
      text: title,
      style: TextStyle(
        color: isWhite
            ? Theme.of(context).colorScheme.onSurface
            : Theme.of(context).colorScheme.onPrimary,
        fontSize: Theme.of(context).textTheme.titleLarge!.fontSize!,
        fontWeight: Theme.of(context).textTheme.titleLarge!.fontWeight!,
      ),
    );
  }
}
