import 'package:flutter/material.dart';

import 'package:eaythes_mobile/core/usecases/calculate_size.dart';

class ResponsiveText extends StatelessWidget {
  final String text;
  final TextStyle style;

  const ResponsiveText({
    super.key,
    required this.text,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: style.color,
        fontSize: calculateSize(context, style.fontSize!),
        fontWeight: style.fontWeight,
      ),
    );
  }
}
