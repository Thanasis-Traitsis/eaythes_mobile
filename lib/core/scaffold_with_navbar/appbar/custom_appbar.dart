import 'package:flutter/material.dart';

import '../../constants/styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String imagePath;
  final double imageHeight;

  const CustomAppBar({
    required this.imagePath,
    this.imageHeight = appbarImageHeight,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: imageHeight,
      title: Row(
        children: [
          Image.asset(
            imagePath,
            fit: BoxFit.contain,
            height: imageHeight,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(imageHeight + padding);
}
