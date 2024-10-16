import '../../data/models/blog_model.dart';
import '../../data/repositories/blog_repositories_impl.dart';

abstract class BlogRepository {
  factory BlogRepository() => BlogRepositoryImplMockData();
  Future<List<BlogModel>> fetchAllBlogs();
  Future<List<BlogModel>> applyFilterToBlogs(String filter);
  Future<List<BlogModel>> searchToBlogs(String search, String? filter);
}
