import 'package:books_app/Features/HomePage/presentation/view/widgets/bestseller_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ListView.builder(
          // physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
        return const BestSellerItem();
      }),
    );
  }
}
