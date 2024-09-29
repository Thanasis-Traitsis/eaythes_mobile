import 'package:flutter/material.dart';

class AppColors {
  final Color whiteColor;
  final Color blackColor;
  final Color backgroundColor;
  final Color textColor;
  final Color primaryColor;
  final Color lightPrimary;

  AppColors({
    required this.whiteColor,
    required this.blackColor,
    required this.backgroundColor,
    required this.textColor,
    required this.primaryColor,
    required this.lightPrimary,
  });

  static final mainColors = AppColors(
    whiteColor: const Color(0xffFFFFFF),
    blackColor: const Color(0xff000000),
    backgroundColor: const Color(0xffDCEBFB),
    textColor: const Color(0xff203A8A),
    primaryColor: const Color(0xff203A8A),
    lightPrimary: const Color(0xff8E9FD5),
  );
}
