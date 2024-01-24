import 'package:books_app/Features/Home/data/models/book_model/book_item_model.dart';
import 'package:books_app/Features/Home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'featuerd_books_cubit_state.dart';

class FeatuerdBooksCubitCubit extends Cubit<FeatuerdBooksState> {
  FeatuerdBooksCubitCubit(this._homeRepo) : super(FeatuerdBooksInitial());

  final HomeRepo _homeRepo;

  Future getFeatuerdBooks() async {
    emit(FeatuerdBooksLoading());
    var result = await _homeRepo.fetchFeaturedBooks();

    result.fold((failuer) {
      emit(FeatuerdBooksFailure(errorMessage: failuer.errMessage));
    }, (books) {
      emit(FeatuerdBooksSuccess(bookItemModel: books));
    });
  }
}
