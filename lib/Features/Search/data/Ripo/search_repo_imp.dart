import 'package:books_app/Features/Home/data/models/book_model/book_item_model.dart';
import 'package:books_app/Features/Search/data/Ripo/search_repo.dart';
import 'package:books_app/core/errors/Failuer.dart';
import 'package:books_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImp implements SearchRepo {
  final ApiService? _apiService;

  SearchRepoImp(this._apiService);

  @override
  Future<Either<Failure, List<BookItemModel>>> fetchSearchedBooks(
      {required String searchedCategory}) async {
    try {
      var data = await _apiService?.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=subject:$searchedCategory');

      List<BookItemModel> itemData = [];
      for (var element in data!['items']) {
        itemData.add(BookItemModel.fromJson(element));
      }
      return right(itemData);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
