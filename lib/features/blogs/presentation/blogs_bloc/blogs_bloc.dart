import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../data/models/blog_model.dart';
import '../../domain/repositories/blog_repositories.dart';

part 'blogs_event.dart';
part 'blogs_state.dart';

class BlogsBloc extends Bloc<BlogsEvent, BlogsState> {
  final blogRepo = BlogRepository();
  static String category = '';
  static List<BlogModel> filteredList = [];

  BlogsBloc() : super(BlogsInitial()) {
    on<FetchAllBlogs>(_onFetchAllBlogs);
    on<FilterBlogs>(_onFilterBlogs);
  }

  String getCategory() {
    return category;
  }

  void _onFetchAllBlogs(FetchAllBlogs event, Emitter<BlogsState> emit) async {
    emit(BlogsInitialLoading());

    List<BlogModel> blogs = await blogRepo.fetchAllBlogs();
    filteredList = blogs;

    emit(BlogsFetchAll(blogs: blogs));
  }

  void _onFilterBlogs(FilterBlogs event, Emitter<BlogsState> emit) async {
    emit(BlogsLoading());

    if (event.filter != null && category != event.filter) {
      category = event.filter!;
      filteredList = await blogRepo.applyFilterToBlogs(category);
    } else if (event.search != null && event.search != '') {
      final List<BlogModel> searchList =
          await blogRepo.searchToBlogs(event.search!, category);
      emit(BlogsFiltered(filteredBlogs: searchList));
    }

    emit(BlogsFiltered(filteredBlogs: filteredList));
  }
}
