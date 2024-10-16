import 'dart:convert';
import 'package:eaythes_mobile/features/blogs/data/usecases/with_no_category.dart';
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

  @override
  Future<List<BlogModel>> applyFilterToBlogs(String filter) async {
    final blogs = <BlogModel>[];

    final String response =
        await rootBundle.loadString('assets/json/blogs_listing.json');

    final data = await json.decode(response);

    for (Map<String, dynamic> blog in data["blogs"]) {
      if (blog["blog"]["category"] == filter || filter == 'Όλα') {
        blogs.add(BlogModel.fromJson(blog));
      }
    }

    return blogs;
  }

  @override
  Future<List<BlogModel>> searchToBlogs(String search, String? filter) async {
    final blogs = <BlogModel>[];

    final String response =
        await rootBundle.loadString('assets/json/blogs_listing.json');

    final data = await json.decode(response);

    if (!withNoCategory(filter)) {
      for (Map<String, dynamic> blog in data["blogs"]) {
        if (blog["blog"]["category"] == filter &&
            blog["blog"]["title"]
                .toLowerCase()
                .contains(search.toLowerCase())) {
          blogs.add(BlogModel.fromJson(blog));
        }
      }
    } else {
      for (Map<String, dynamic> blog in data["blogs"]) {
        if (blog["blog"]["title"]
            .toLowerCase()
            .contains(search.toLowerCase())) {
          blogs.add(BlogModel.fromJson(blog));
        }
      }
    }

    return blogs;
  }
}

class BlogRepositoryImplLocalDatabase implements BlogRepository {
  @override
  Future<List<BlogModel>> fetchAllBlogs() async {
    return [];
  }

  @override
  Future<List<BlogModel>> applyFilterToBlogs(String filter) async {
    return [];
  }

  @override
  Future<List<BlogModel>> searchToBlogs(String search, String? filter) {
    // TODO: implement searchToBlogs
    throw UnimplementedError();
  }
}

class BlogRepositoryImplRemoteServer implements BlogRepository {
  @override
  Future<List<BlogModel>> fetchAllBlogs() async {
    return [];
  }

  @override
  Future<List<BlogModel>> applyFilterToBlogs(String filter) async {
    return [];
  }

  @override
  Future<List<BlogModel>> searchToBlogs(String search, String? filter) {
    // TODO: implement searchToBlogs
    throw UnimplementedError();
  }
}
