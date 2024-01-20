import 'package:books_app/Features/HomePage/presentation/view/widgets/featuered_books_item.dart';
import 'package:flutter/material.dart';

class FeatueredBooksListView extends StatelessWidget {
  const FeatueredBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const FeaturedBooksItem();
          }),
    );
  }
}
