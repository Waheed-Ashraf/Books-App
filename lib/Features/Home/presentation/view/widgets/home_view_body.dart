import 'package:books_app/Features/Home/presentation/view/widgets/bestseller_list_view.dart';
import 'package:books_app/Features/Home/presentation/view/widgets/custom_appbar.dart';
import 'package:books_app/Features/Home/presentation/view/widgets/featuered_books_list.dart';
import 'package:books_app/core/utils/text_style.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
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
          Padding(
            padding: EdgeInsets.only(left: 24),
            child: Text(
              'Best Seller',
              style: Styles.textStyle18,
            ),
          ),
          SizedBox(
            height: 18,
          ),
          BestSellerListView(),
        ],
      ),
    );
  }
}
