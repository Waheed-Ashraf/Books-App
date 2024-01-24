part of 'newest_books_cubit.dart';

sealed class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

final class NewestBooksInitial extends NewestBooksState {}

final class NewestBooksLoading extends NewestBooksState {}

final class NewestBooksSuccess extends NewestBooksState {
  final List<BookItemModel> newestBooksModel;

  const NewestBooksSuccess({required this.newestBooksModel});
}

final class NewestBooksFailuer extends NewestBooksState {
  final String errorMessage;

  const NewestBooksFailuer({required this.errorMessage});
}
