import 'package:flutter/material.dart';

class AppColors {
  final Color whiteColor;
  final Color blackColor;
  final Color backgroundColor;
  final Color textColor;
  final Color primaryColor;

  AppColors({
    required this.whiteColor,
    required this.blackColor,
    required this.backgroundColor,
    required this.textColor,
    required this.primaryColor,
  });

  static final mainColors = AppColors(
    whiteColor: const Color(0xffFFFFFF),
    blackColor: const Color(0xff000000),
    backgroundColor: const Color(0xffDCEBFB),
    textColor: const Color(0xff203A8A),
    primaryColor: const Color(0xff203A8A),
  );
}
