part of 'blogs_bloc.dart';

abstract class BlogsEvent extends Equatable {
  const BlogsEvent();

  @override
  List<Object> get props => [];
}

class FetchAllBlogs extends BlogsEvent {}
