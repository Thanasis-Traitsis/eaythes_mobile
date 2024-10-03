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
      child: Text(
        text,
        style: TextStyle(
          color: isChosen ? Theme.of(context).colorScheme.onSurface : null,
        ),
      ),
    );
  }
}
