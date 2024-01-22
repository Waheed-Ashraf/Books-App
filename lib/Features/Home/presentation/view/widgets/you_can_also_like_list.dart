import 'package:books_app/Features/Home/presentation/view/widgets/custom_you_may_like_image.dart';
import 'package:flutter/material.dart';

class YouCanAlsoLikeList extends StatelessWidget {
  const YouCanAlsoLikeList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: ((context, index) {
            return const Padding(
              padding: EdgeInsets.only(left: 6),
              child: CustomYouMayLikeItemImage(),
            );
          })),
    );
  }
}
