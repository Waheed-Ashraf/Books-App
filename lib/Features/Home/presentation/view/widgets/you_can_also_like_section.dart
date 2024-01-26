import 'package:books_app/Features/Home/data/models/book_model/book_item_model.dart';
import 'package:books_app/Features/Home/presentation/view/widgets/you_can_also_like_list.dart';
import 'package:books_app/core/utils/text_style.dart';
import 'package:flutter/material.dart';

class YouCanAlsoLikeSection extends StatelessWidget {
  const YouCanAlsoLikeSection({super.key, required this.bookModel});
  final BookItemModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'You can also like',
          style: Styles.textStyle14,
        ),
        const SizedBox(
          height: 8,
        ),
        YouCanAlsoLikeList(bookModel: bookModel),
      ],
    );
  }
}
