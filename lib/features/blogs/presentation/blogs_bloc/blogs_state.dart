part of 'blogs_bloc.dart';

abstract class BlogsState extends Equatable {
  const BlogsState();

  @override
  List<Object> get props => [];
}

final class BlogsInitial extends BlogsState {}

final class BlogsInitialLoading extends BlogsState {}

final class BlogsLoading extends BlogsState {}

final class BlogsFetchAll extends BlogsState {
  final List<BlogModel> blogs;

  const BlogsFetchAll({required this.blogs});

  @override
  String toString() => "The Entire Blogs List: $blogs";
}

final class BlogsFiltered extends BlogsState {
  final List<BlogModel> filteredBlogs;

  const BlogsFiltered({required this.filteredBlogs});

  @override
  String toString() => "The Filtered Blogs List: $filteredBlogs";
}
