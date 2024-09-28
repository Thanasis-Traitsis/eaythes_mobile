import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../data/models/blog_model.dart';
import '../../domain/repositories/blog_repositories.dart';

part 'blogs_event.dart';
part 'blogs_state.dart';

class BlogsBloc extends Bloc<BlogsEvent, BlogsState> {
  final blogRepo = BlogRepository();

  BlogsBloc() : super(BlogsInitial()) {
    on<FetchAllBlogs>(_onFetchAllBlogs);
  }

  void _onFetchAllBlogs(FetchAllBlogs event, Emitter<BlogsState> emit) async {
    emit(BlogsLoading());
    List<BlogModel> blogs = await blogRepo.fetchAllBlogs();

    emit(BlogsFetchAll(blogs: blogs));
  }
}
