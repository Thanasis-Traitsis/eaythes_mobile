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
    );
  }
}
