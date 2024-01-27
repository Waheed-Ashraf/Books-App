import 'package:books_app/Features/Home/data/models/book_model/book_item_model.dart';
import 'package:books_app/Features/Search/presentation/view/widgets/search_view_body.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key, this.bookModel});
  final BookItemModel? bookModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SearchViewBody(
        bookModel: bookModel!,
      )),
    );
  }
}
