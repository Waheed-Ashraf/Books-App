import 'package:books_app/core/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerRating extends StatelessWidget {
  const BestSellerRating({
    super.key,
    required this.bookRate,
    required this.bookPadges,
  });

  final num bookRate;
  final int bookPadges;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 12.8,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          "$bookRate",
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: .5,
          child: Text(
            '($bookPadges)',
            style: Styles.textStyle14,
          ),
        ),
      ],
    );
  }
}
