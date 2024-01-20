import 'package:books_app/Features/HomePage/presentation/view/widgets/custom_appbar.dart';
import 'package:books_app/Features/HomePage/presentation/view/widgets/featuered_books_list.dart';
import 'package:books_app/core/utils/assets_data.dart';
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
          children: [
            CustomAppBar(),
            SizedBox(
              height: 16,
            ),
            FeatueredBooksListView(),
          ],
        ),
      ),
    ));
  }
}
