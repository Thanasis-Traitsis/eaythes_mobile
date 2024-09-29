import 'package:eaythes_mobile/core/constants/styles.dart';
import 'package:flutter/material.dart';

class CategoryContainerTheme extends ThemeExtension<CategoryContainerTheme> {
  final Color backgroundColor;
  final Color textColor;
  final EdgeInsets categoryPadding;
  final BorderRadius categoryBorderRadius;

  CategoryContainerTheme({
    required this.backgroundColor,
    required this.textColor,
    this.categoryPadding =
        const EdgeInsets.symmetric(vertical: padding / 2, horizontal: padding),
    this.categoryBorderRadius =
        const BorderRadius.all(Radius.circular(borderRadius / 3)),
  });

  @override
  ThemeExtension<CategoryContainerTheme> copyWith({
    Color? backgroundColor,
    Color? textColor,
    EdgeInsets? categoryPadding,
    BorderRadius? categoryBorderRadius,
  }) {
    return CategoryContainerTheme(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      textColor: textColor ?? this.textColor,
      categoryPadding: categoryPadding ?? this.categoryPadding,
      categoryBorderRadius: categoryBorderRadius ?? this.categoryBorderRadius,
    );
  }

  @override
  ThemeExtension<CategoryContainerTheme> lerp(
      covariant ThemeExtension<CategoryContainerTheme>? other, double t) {
    if (other is! CategoryContainerTheme) return this;
    return CategoryContainerTheme(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
      textColor: Color.lerp(textColor, other.textColor, t)!,
      categoryPadding:
          EdgeInsets.lerp(categoryPadding, other.categoryPadding, t)!,
      categoryBorderRadius: BorderRadius.lerp(
          categoryBorderRadius, other.categoryBorderRadius, t)!,
    );
  }
}
