import 'package:books_app/Features/Search/presentation/view/widgets/custom_search_textfield.dart';
import 'package:books_app/Features/Search/presentation/view/widgets/search_result_list.dart';
import 'package:books_app/core/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 8,
          ),
          Text(
            'Search Result',
            style: Styles.textStyle16,
          ),
          SizedBox(
            height: 8,
          ),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
