import 'package:books_app/Features/Home/data/models/book_model/book_item_model.dart';
import 'package:books_app/Features/Home/presentation/view/widgets/bestseller_rating.dart';
import 'package:books_app/constent.dart';
import 'package:books_app/core/utils/text_style.dart';
import 'package:flutter/material.dart';

class BestSellerItemDetails extends StatelessWidget {
  const BestSellerItemDetails({
    super.key,
    required this.bookModel,
  });

  final BookItemModel bookModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            bookModel.volumeInfo.title!,
            style: Styles.textStyle20
                .copyWith(fontFamily: kGtSectraFine, height: 1.3),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            bookModel.volumeInfo.authors?[0] == null
                ? 'Unknown Author'
                : bookModel.volumeInfo.authors![0],
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Styles.textStyle14,
          ),
          Row(
            children: [
              Text(
                "Free",
                style: Styles.textStyle20.copyWith(
                  color: const Color(0xffFFDD4F),
                ),
              ),
              const Spacer(),
              BestSellerRating(
                bookPadges: bookModel.volumeInfo.ratingsCount ?? 0,
                bookRate: bookModel.volumeInfo.averageRating ?? 0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
