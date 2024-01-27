import 'package:books_app/Features/Home/data/models/book_model/book_item_model.dart';
import 'package:books_app/Features/Home/presentation/view/widgets/bestseller_item.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key, required this.bookModel});

  final BookItemModel bookModel;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return BookItem(
            bookModel: bookModel,
          );
        });
  }
}
