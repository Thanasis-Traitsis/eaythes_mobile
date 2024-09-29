import 'package:flutter/material.dart';

import '../../config/theme/category_container_theme.dart';

class CustomCategoryContainer extends StatelessWidget {
  const CustomCategoryContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final categoryTheme = Theme.of(context).extension<CategoryContainerTheme>();

    return Container(
      padding: categoryTheme?.categoryPadding,
      decoration: BoxDecoration(
        borderRadius: categoryTheme?.categoryBorderRadius,
        color: categoryTheme?.backgroundColor,
      ),
      child: Text(
        "sdfsdfsf",
        style: TextStyle(
          color: categoryTheme?.textColor,
        ),
      ),
    );
  }
}
