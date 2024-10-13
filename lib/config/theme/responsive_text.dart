import 'package:flutter/material.dart';

import 'package:eaythes_mobile/core/usecases/calculate_size.dart';

class ResponsiveText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final bool isUnderline;

  const ResponsiveText({
    super.key,
    required this.text,
    required this.style,
    this.isUnderline = false,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        decoration: isUnderline == true ? TextDecoration.underline : null,
        decorationColor:
            isUnderline == true ? Theme.of(context).primaryColor : null,
        color: style.color ?? Theme.of(context).textTheme.bodyMedium!.color,
        fontSize: calculateSize(
            context,
            style.fontSize ??
                Theme.of(context).textTheme.bodyMedium!.fontSize!),
        fontWeight: style.fontWeight ?? FontWeight.normal,
      ),
    );
  }
}
