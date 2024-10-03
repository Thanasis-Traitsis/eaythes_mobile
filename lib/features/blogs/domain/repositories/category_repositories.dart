import '../../data/models/category_model.dart';
import '../../data/repositories/category_repositories_impl.dart';

abstract class CategoryRepository {
  factory CategoryRepository() => CategoryRepositoryImplMockData();
  Future<List<CategoryModel>> fetchAllCategories();
}