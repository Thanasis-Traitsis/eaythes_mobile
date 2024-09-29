import 'package:flutter/material.dart';

import '../../config/theme/category_container_theme.dart';
import '../../config/theme/responsive_text.dart';

class CustomCategoryContainer extends StatelessWidget {
  final String text;

  const CustomCategoryContainer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final categoryTheme = Theme.of(context).extension<CategoryContainerTheme>();

    return Container(
      padding: categoryTheme?.categoryPadding,
      decoration: BoxDecoration(
        borderRadius: categoryTheme?.categoryBorderRadius,
        color: categoryTheme?.backgroundColor,
      ),
      child: ResponsiveText(
        text: text,
        style: Theme.of(context).textTheme.labelSmall!,
      ),
    );
  }
}
