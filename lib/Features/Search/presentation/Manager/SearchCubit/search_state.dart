part of 'search_cubit.dart';


sealed class SearchState extends Equatable {

  const SearchState();


  @override

  List<Object> get props => [];

}


final class SearchInitial extends SearchState {}


final class SearchLoading extends SearchState {}


final class SearchSuccess extends SearchState {

  final List<BookItemModel> searchBooksModel;


  const SearchSuccess({required this.searchBooksModel});

}


final class SearchFailuer extends SearchState {

  final String errorMessage;


  const SearchFailuer({required this.errorMessage});

}
