import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../config/theme/responsive_text.dart';
import '../../../../../core/constants/styles.dart';
import '../../../../../core/utils/routes_utils.dart';

class ReadMoreTextButton extends StatelessWidget {
  const ReadMoreTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go(Pages.blogs.screenPath);
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: spacing),
        child: ResponsiveText(
          text: 'Διαβάστε Περισσότερα',
          style: Theme.of(context).textTheme.bodyMedium!,
          isUnderline: true,
        ),
      ),
    );
  }
}
