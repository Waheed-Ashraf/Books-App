import 'package:books_app/core/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerRating extends StatelessWidget {
  const BestSellerRating({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 12.8,
        ),
        SizedBox(
          width: 6.3,
        ),
        Text(
          '4.5',
          style: Styles.textStyle16,
        ),
        SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: .5,
          child: Text(
            '(2390)',
            style: Styles.textStyle14,
          ),
        ),
      ],
    );
  }
}
