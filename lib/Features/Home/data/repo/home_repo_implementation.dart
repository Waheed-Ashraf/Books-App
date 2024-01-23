import 'package:books_app/Features/Home/data/models/book_model/book_item_model.dart';
import 'package:books_app/Features/Home/data/repo/home_repo.dart';
import 'package:books_app/core/errors/Failuer.dart';
import 'package:books_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoimp implements HomeRepo {
  final ApiService _apiService;

  HomeRepoimp(this._apiService);
  @override
  Future<Either<Failure, List<BookItemModel>>> fetchNewestSellerBooks() async {
    try {
      var data = await _apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest &q=programming');

      List<BookItemModel> itemData = [];
      for (var element in data['items']) {
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

  @override
  Future<Either<Failure, List<BookItemModel>>> fetchFeaturedBooks() async {
    try {
      var data = await _apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=programming');

      List<BookItemModel> itemData = [];
      for (var element in data['items']) {
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
