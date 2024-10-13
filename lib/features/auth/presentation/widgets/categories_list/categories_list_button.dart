import 'package:eaythes_mobile/config/theme/responsive_text.dart';
import 'package:eaythes_mobile/core/usecases/calculate_size.dart';
import 'package:flutter/material.dart';

class CategoriesListButton extends StatelessWidget {
  final String text;
  final bool isChosen;
  final VoidCallback onPressed;

  const CategoriesListButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.isChosen,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color?>(
          isChosen ? Theme.of(context).colorScheme.primary : null,
        ),
      ),
      onPressed: onPressed,
      child: ResponsiveText(
        text: text,
        style: TextStyle(
          fontSize: calculateSize(
            context,
            Theme.of(context)
                .elevatedButtonTheme
                .style!
                .textStyle!
                .resolve({})!.fontSize!,
          ),
          color: isChosen ? Theme.of(context).colorScheme.onSurface : null,
        ),
      ),
    );
  }
}
