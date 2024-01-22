import 'package:books_app/Features/Home/presentation/view/widgets/bestseller_item_details.dart';
import 'package:books_app/core/utils/app_router.dart';
import 'package:books_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookItem extends StatelessWidget {
  const BookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.kBookDetailsView);
        },
        child: SizedBox(
          height: 107,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2.7 / 4,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(AssetsData.testImage),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              const BestSellerItemDetails(),
            ],
          ),
        ),
      ),
    );
  }
}
