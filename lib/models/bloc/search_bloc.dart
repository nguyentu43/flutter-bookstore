import 'package:bloc/bloc.dart';

class SearchEvent {}

class CategorySearchEvent extends SearchEvent {
  final String id;
  CategorySearchEvent({required this.id});
}

class SearchData {
  String? categoryId;
  SearchData({this.categoryId});
}

class SearchBloc extends Bloc<SearchEvent, SearchData> {
  SearchBloc(SearchData initialState) : super(initialState) {
    on<CategorySearchEvent>(
        (event, emit) => emit(SearchData(categoryId: event.id)));
  }
}
