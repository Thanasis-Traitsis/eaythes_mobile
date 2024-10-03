import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../data/models/category_model.dart';
import '../../domain/repositories/category_repositories.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final blogRepo = CategoryRepository();

  CategoryBloc() : super(CategoryState()) {
    on<FetchAllCategories>(_onFetchAllCategories);
  }

  void _onFetchAllCategories(
      FetchAllCategories event, Emitter<CategoryState> emit) async {
    List<String> list = [];
    List<CategoryModel> categories = await blogRepo.fetchAllCategories();

    for (var category in categories) {
      list.add(category.name);
    }

    emit(state.copyWith(categories: list));
  }
}
