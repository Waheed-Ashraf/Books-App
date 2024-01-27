import 'package:books_app/Features/Home/data/models/book_model/book_item_model.dart';
import 'package:books_app/Features/Search/presentation/view/widgets/custom_search_textfield.dart';
import 'package:books_app/Features/Search/presentation/view/widgets/search_result_list.dart';
import 'package:books_app/core/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key, required this.bookModel});

  final BookItemModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomSearchTextField(),
          const SizedBox(
            height: 8,
          ),
          const Text(
            'Search Result',
            style: Styles.textStyle16,
          ),
          const SizedBox(
            height: 8,
          ),
          Expanded(
              child: SearchResultListView(
            bookModel: bookModel,
          )),
        ],
      ),
    );
  }
}
