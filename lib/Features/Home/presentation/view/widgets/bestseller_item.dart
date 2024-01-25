import 'package:books_app/Features/Home/data/models/book_model/book_item_model.dart';
import 'package:books_app/Features/Home/presentation/view/widgets/bestseller_item_details.dart';
import 'package:books_app/Features/Home/presentation/view/widgets/featuered_books_item.dart';
import 'package:books_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookItem extends StatelessWidget {
  const BookItem({
    super.key,
    required this.bookModel,
    // required this.imageUrl,
    // required this.bookTitle,
    // required this.bookAuter,
    // required this.bookRate,
    // required this.pageNumber
  });

  // final String imageUrl;
  // final String bookTitle;
  // final String bookAuter;
  // final dynamic bookRate;
  // final int pageNumber;
  final BookItemModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.kBookDetailsView);
        },
        child: SizedBox(
          height: 107,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2.8 / 4,
                child: BooksImageItem(
                    imageUrl: bookModel.volumeInfo.imageLinks.thumbnail),
              ),
              const SizedBox(
                width: 25,
              ),
              BestSellerItemDetails(
                bookModel: bookModel,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
