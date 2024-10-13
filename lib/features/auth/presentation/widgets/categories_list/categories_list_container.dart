import 'package:eaythes_mobile/core/usecases/calculate_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/styles.dart';
import '../../../../blogs/presentation/category_bloc/category_bloc.dart';
import 'categories_list_button.dart';

class CategoriesListContainer extends StatefulWidget {
  const CategoriesListContainer({super.key});

  @override
  State<CategoriesListContainer> createState() =>
      _CategoriesListContainerState();
}

class _CategoriesListContainerState extends State<CategoriesListContainer> {
  String _selectedCategory = 'Όλα';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: spacing),
      height: calculateSize(context, 30),
      child: BlocBuilder<CategoryBloc, CategoryState>(
        builder: (context, state) {
          final categories = ['Όλα', ...state.categories];
          return ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(categories.length, (int index) {
              final category = categories[index];
              return Container(
                margin: EdgeInsets.only(
                    right: index != categories.length - 1 ? spacing : 0),
                child: CategoriesListButton(
                  text: category,
                  isChosen: _selectedCategory == category,
                  onPressed: () {
                    setState(() {
                      _selectedCategory = category;
                    });
                  },
                ),
              );
            }),
          );
        },
      ),
    );
  }
}
