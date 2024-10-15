import 'package:eaythes_mobile/features/auth/presentation/widgets/home_blogs/search_container/filter_button.dart';
import 'package:eaythes_mobile/features/auth/presentation/widgets/home_blogs/search_container/search_textfield.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/constants/styles.dart';
import '../../../../../../core/widgets/custom_gap.dart';
import '../../categories_list/categories_list_container.dart';

class SearchAndFilterContainer extends StatelessWidget {
  const SearchAndFilterContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: padding),
          child: const Row(
            children: [
              Expanded(
                child: SearchTextfield(),
              ),
              CustomGap(
                width: spacing,
              ),
              FilterButton()
            ],
          ),
        ),
        const CustomGap(
          height: spacing,
        ),
        const CategoriesListContainer(),
        const CustomGap(
          height: spacing * 2,
        ),
      ],
    );
  }
}
