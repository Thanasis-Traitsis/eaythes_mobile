import 'package:flutter/material.dart';

import '../../../../../../core/constants/sizes.dart';
import '../../../../../../core/constants/styles.dart';
import '../../../../../../core/usecases/calculate_size.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(borderRadius / 3),
      color: Theme.of(context).colorScheme.primary,
      child: InkWell(
        borderRadius: BorderRadius.circular(borderRadius / 3),
        onTap: () {},
        splashColor: Theme.of(context).disabledColor,
        child: SizedBox(
          width: calculateSize(context, searchbarHeight),
          height: calculateSize(context, searchbarHeight),
          child: Center(
            child: Icon(
              Icons.tune,
              color: Theme.of(context).colorScheme.onSurface,
              size: calculateSize(context, AppValues().searchbarIconSize),
            ),
          ),
        ),
      ),
    );
  }
}
