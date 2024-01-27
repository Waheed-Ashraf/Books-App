import 'package:books_app/Features/Home/data/models/book_model/book_item_model.dart';

import 'package:books_app/Features/Home/data/repo/home_repo.dart';

import 'package:books_app/Features/Search/data/Ripo/search_repo.dart';

import 'package:equatable/equatable.dart';

import 'package:flutter_bloc/flutter_bloc.dart';


part 'search_state.dart';


class SearchCubit extends Cubit<SearchState> {

  SearchCubit(this._searchRepo) : super(SearchInitial());

  final SearchRepo _searchRepo;


  Future<void> getSimilarBooks({required String searchedCategory}) async {

    emit(SearchLoading());


    var result = await _searchRepo.fetchSearchedBooks(
        searchedCategory: searchedCategory);


    result.fold((failuer) {

      emit(SearchFailuer(errorMessage: failuer.errMessage));

    }, (searchedBooks) {

      emit(SearchSuccess(searchBooksModel: searchedBooks));

    });

  }

}

