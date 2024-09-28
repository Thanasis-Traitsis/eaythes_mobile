part of 'blogs_bloc.dart';

abstract class BlogsState extends Equatable {
  const BlogsState();

  @override
  List<Object> get props => [];
}

final class BlogsInitial extends BlogsState {}

final class BlogsLoading extends BlogsState {}

final class BlogsFetchAll extends BlogsState {
  final List<BlogModel> blogs;

  const BlogsFetchAll({required this.blogs});

  @override
  String toString() => "The Entire Blogs List: $blogs";
}
