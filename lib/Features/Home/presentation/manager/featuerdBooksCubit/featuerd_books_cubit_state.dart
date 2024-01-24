part of 'featuerd_books_cubit_cubit.dart';

sealed class FeatuerdBooksState extends Equatable {
  const FeatuerdBooksState();

  @override
  List<Object> get props => [];
}

final class FeatuerdBooksInitial extends FeatuerdBooksState {}

final class FeatuerdBooksSuccess extends FeatuerdBooksState {
  final List<BookItemModel> bookItemModel;

  const FeatuerdBooksSuccess({required this.bookItemModel});
}

final class FeatuerdBooksLoading extends FeatuerdBooksState {}

final class FeatuerdBooksFailure extends FeatuerdBooksState {
  final String errorMessage;

  const FeatuerdBooksFailure({required this.errorMessage});
}
