import 'package:bloc/bloc.dart';
import 'package:books_app/Features/Home/data/models/book_model/book_item_model.dart';
import 'package:books_app/Features/Home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this._homeRepo) : super(NewestBooksInitial());
  final HomeRepo _homeRepo;

  Future<void> getNewestBooks() async {
    emit(NewestBooksLoading());

    var result = await _homeRepo.fetchNewestSellerBooks();
    result.fold((failuer) {
      emit(NewestBooksFailuer(errorMessage: failuer.errMessage));
    }, (newestBooks) {
      emit(NewestBooksSuccess(newestBooksModel: newestBooks));
    });
  }
}
