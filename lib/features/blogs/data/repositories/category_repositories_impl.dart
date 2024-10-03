import 'dart:convert';

import 'package:eaythes_mobile/features/blogs/data/models/category_model.dart';
import 'package:flutter/services.dart';

import '../../domain/repositories/category_repositories.dart';

class CategoryRepositoryImplMockData implements CategoryRepository {
  @override
  Future<List<CategoryModel>> fetchAllCategories() async {
    final categories = <CategoryModel>[];

    final String response =
        await rootBundle.loadString('assets/json/categories_list.json');

    final data = await json.decode(response);

    for (Map<String, dynamic> blog in data["categories"]) {
      categories.add(CategoryModel.fromJson(blog));
    }

    return categories;
  }
}

class CategoryRepositoryImplLocalDatabase implements CategoryRepository {
  @override
  Future<List<CategoryModel>> fetchAllCategories() {
    throw UnimplementedError();
  }
}

class CategoryRepositoryImplRemoteServer implements CategoryRepository {
  @override
  Future<List<CategoryModel>> fetchAllCategories() {
    throw UnimplementedError();
  }
}
