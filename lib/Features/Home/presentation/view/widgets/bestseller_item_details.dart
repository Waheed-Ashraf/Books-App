import 'package:books_app/Features/Home/presentation/view/widgets/bestseller_rating.dart';
import 'package:books_app/constent.dart';
import 'package:books_app/core/utils/text_style.dart';
import 'package:flutter/material.dart';

class BestSellerItemDetails extends StatelessWidget {
  const BestSellerItemDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Harry The Jungle Book ',
            style: Styles.textStyle20.copyWith(
              fontFamily: kGtSectraFine,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const Text(
            'Destofisky',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Styles.textStyle14,
          ),
          const Row(
            children: [
              Text(
                r'999 $',
                style: Styles.textStyle20,
              ),
              Spacer(),
              BestSellerRating(),
            ],
          ),
        ],
      ),
    );
  }
}
