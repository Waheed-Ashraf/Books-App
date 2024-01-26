part of 'simillar_books_cubit.dart';


sealed class SimillarBooksState extends Equatable {

  const SimillarBooksState();


  @override

  List<Object> get props => [];

}


final class SimillarBooksInitial extends SimillarBooksState {}


final class SimillarBooksSuccess extends SimillarBooksState {

  final List<BookItemModel> simillarBooksModel;


  const SimillarBooksSuccess({required this.simillarBooksModel});

}


final class SimillerBooksFailuer extends SimillarBooksState {

  final String errorMessage;


  const SimillerBooksFailuer({required this.errorMessage});

}


final class SimillerBooksLoading extends SimillarBooksState {}

