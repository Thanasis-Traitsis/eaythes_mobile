part of 'category_bloc.dart';

class CategoryState extends Equatable {
  CategoryState({
    List<String>? categories,
  }) : categories = categories ?? [];

  final List<String> categories;

  @override
  List<Object> get props => [categories];

  CategoryState copyWith({List<String>? categories}) {
    return CategoryState(
      categories: categories ?? this.categories,
    );
  }
}
