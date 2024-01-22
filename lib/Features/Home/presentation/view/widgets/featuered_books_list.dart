import 'package:books_app/Features/Home/presentation/view/widgets/featuered_books_item.dart';
import 'package:flutter/material.dart';

class FeatueredBooksListView extends StatelessWidget {
  const FeatueredBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .3,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const FeaturedBooksItem();
            }),
      ),
    );
  }
}
