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
    on<FilterBlogs>(_onFilterBlogs);
  }

  void _onFetchAllBlogs(FetchAllBlogs event, Emitter<BlogsState> emit) async {
    emit(BlogsInitialLoading());

    List<BlogModel> blogs = await blogRepo.fetchAllBlogs();

    emit(BlogsFetchAll(blogs: blogs));
  }

  void _onFilterBlogs(FilterBlogs event, Emitter<BlogsState> emit) async {
    emit(BlogsLoading());

    List<BlogModel> filteredList =
        await blogRepo.applyFilterToBlogs(event.filter);

    emit(BlogsFiltered(filteredBlogs: filteredList));
  }
}
