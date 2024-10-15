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
        onPrimary: chosenColor.blackColor,
        onSurface: chosenColor.whiteColor,
      ),
      appBarTheme: AppBarTheme(
        scrolledUnderElevation: 0,
        backgroundColor: chosenColor.backgroundColor,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: chosenColor.primaryColor,
        selectedItemColor: chosenColor.whiteColor,
        unselectedItemColor: chosenColor.whiteColor.withOpacity(withOpacity),
      ),
      textTheme: TextTheme(
        labelSmall: TextStyle(
          fontSize: sizes.smallText,
          color: chosenColor.primaryColor,
          fontWeight: FontWeight.bold,
        ),
        labelMedium: TextStyle(
          fontSize: sizes.normalText,
          color: chosenColor.primaryColor,
          fontWeight: FontWeight.bold,
        ),
        titleLarge: TextStyle(
          fontSize: sizes.largeText,
          color: chosenColor.primaryColor,
          fontWeight: FontWeight.bold,
        ),
        bodySmall: TextStyle(
          fontSize: sizes.smallText,
          color: chosenColor.textColor,
        ),
        bodyMedium: TextStyle(
          fontSize: sizes.normalText,
          color: chosenColor.textColor,
        ),
        bodyLarge: TextStyle(
          fontSize: sizes.largeText,
          color: chosenColor.textColor,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius / 2),
              ),
            ),
            backgroundColor:
                WidgetStateProperty.all<Color>(chosenColor.whiteColor),
            padding: WidgetStateProperty.all<EdgeInsets>(
              const EdgeInsets.symmetric(horizontal: padding),
            ),
            textStyle: WidgetStateProperty.all<TextStyle>(TextStyle(
              fontSize: sizes.normalText,
              fontFamily: fontFamilyName,
            ))),
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
