import 'package:eaythes_mobile/config/theme/category_container_theme.dart';
import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';
import '../../core/constants/sizes.dart';
import '../../core/constants/styles.dart';
import 'colors.dart';

class AppTheme {
  final AppColors chosenColor;

  AppTheme(
    this.chosenColor,
  );

  ThemeData getTheme() {
    final sizes = AppValues();

    return ThemeData(
      useMaterial3: true,
      fontFamily: fontFamilyName,
      disabledColor: chosenColor.lightPrimary,
      colorScheme: ColorScheme.fromSeed(
        seedColor: chosenColor.primaryColor,
        surface: chosenColor.backgroundColor,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: chosenColor.backgroundColor,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: chosenColor.primaryColor,
        selectedItemColor: chosenColor.whiteColor,
        unselectedItemColor: chosenColor.whiteColor.withOpacity(withOpacity),
      ),
      extensions: <ThemeExtension<dynamic>>[
        CategoryContainerTheme(
          backgroundColor: chosenColor.whiteColor,
          textColor: chosenColor.primaryColor,
        ),
      ],
    );
  }
}
