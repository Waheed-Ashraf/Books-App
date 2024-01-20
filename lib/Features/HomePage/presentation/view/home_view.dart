import 'package:books_app/Features/HomePage/presentation/view/widgets/custom_appbar.dart';
import 'package:books_app/Features/HomePage/presentation/view/widgets/featuered_books_list.dart';
import 'package:books_app/core/utils/text_style.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            SizedBox(
              height: 16,
            ),
            FeatueredBooksListView(),
            SizedBox(
              height: 32,
            ),
            Text(
              'Best Seller',
              style: Styles.textStyle18,
            ),
          ],
        ),
      ),
    ));
  }
}

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return const BestSellerItem();
    });
  }
}

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [],
    );
  }
}
