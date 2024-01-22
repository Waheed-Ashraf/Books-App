import 'package:books_app/Features/Home/presentation/view/widgets/you_can_also_like_list.dart';
import 'package:books_app/core/utils/text_style.dart';
import 'package:flutter/material.dart';

class YouCanAlsoLikeSection extends StatelessWidget {
  const YouCanAlsoLikeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'You can also like',
          style: Styles.textStyle14,
        ),
        SizedBox(
          height: 8,
        ),
        YouCanAlsoLikeList(),
      ],
    );
  }
}
