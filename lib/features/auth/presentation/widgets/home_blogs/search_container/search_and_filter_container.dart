import 'package:flutter/material.dart';

import '../../../../../../core/constants/styles.dart';
import '../../categories_list/categories_list_container.dart';

class SearchAndFilterContainer extends StatelessWidget {
  const SearchAndFilterContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: padding),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.white,
                  height: 40,
                ),
              ),
              const SizedBox(
                width: spacing,
              ),
              Container(
                color: Colors.grey,
                width: 40,
                height: 40,
              )
            ],
          ),
        ),
        const SizedBox(
          height: spacing,
        ),
        const CategoriesListContainer(),
        const SizedBox(
          height: spacing * 2,
        ),
      ],
    );
  }
}
