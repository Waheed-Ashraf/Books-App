import 'package:books_app/Features/Home/data/models/book_model/book_item_model.dart';
import 'package:books_app/core/errors/Failuer.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookItemModel>>> fetchNewestSellerBooks();
  Future<Either<Failure, List<BookItemModel>>> fetchFeaturedBooks();
}
