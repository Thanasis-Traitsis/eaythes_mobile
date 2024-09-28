import 'dart:convert';
import 'package:flutter/services.dart';

import '../../domain/repositories/blog_repositories.dart';
import '../models/blog_model.dart';

class BlogRepositoryImplMockData implements BlogRepository {
  @override
  Future<List<BlogModel>> fetchAllBlogs() async {
    final blogs = <BlogModel>[];

    final String response =
        await rootBundle.loadString('assets/json/blogs_listing.json');

    final data = await json.decode(response);

    for (Map<String, dynamic> blog in data["blogs"]) {
      blogs.add(BlogModel.fromJson(blog));
    }

    return blogs;
  }
}

class BlogRepositoryImplLocalDatabase implements BlogRepository {
  @override
  Future<List<BlogModel>> fetchAllBlogs() async {
    return [];
  }
}

class BlogRepositoryImplRemoteServer implements BlogRepository {
  @override
  Future<List<BlogModel>> fetchAllBlogs() async {
    return [];
  }
}
