import 'package:books_app/Features/Home/data/models/book_model/book_item_model.dart';


import 'package:books_app/Features/Home/data/repo/home_repo.dart';


import 'package:equatable/equatable.dart';


import 'package:flutter_bloc/flutter_bloc.dart';


part 'simillar_books_state.dart';


class SimillarBooksCubit extends Cubit<SimillarBooksState> {

  SimillarBooksCubit(

    this._homeRepo,

  ) : super(SimillarBooksInitial());


  final HomeRepo _homeRepo;


  Future<void> getSimilarBooks({required String category}) async {

    emit(SimillerBooksLoading());


    var result = await _homeRepo.fetchSimilarBooks(category: category);


    result.fold((failuer) {

      emit(SimillerBooksFailuer(errorMessage: failuer.errMessage));

    }, (simillarBooks) {

      emit(SimillarBooksSuccess(simillarBooksModel: simillarBooks));

    });

  }

}

