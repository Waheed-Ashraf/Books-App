import 'package:books_app/Features/Home/presentation/view/widgets/action_button.dart';
import 'package:books_app/Features/Home/presentation/view/widgets/bestseller_rating.dart';
import 'package:books_app/Features/Home/presentation/view/widgets/books_details_image.dart';
import 'package:books_app/Features/Home/presentation/view/widgets/custom_books_details_appbar.dart';
import 'package:books_app/Features/Home/presentation/view/widgets/you_can_also_like_section.dart';
import 'package:books_app/core/utils/text_style.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
          physics: const NeverScrollableScrollPhysics(),
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  const CustomBookDetailsViewAppBar(),
                  const BookDetailsImage(),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    'The Jungle Book',
                    style: Styles.textStyle30,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Opacity(
                    opacity: .7,
                    child: Text(
                      'destofisky',
                      style: Styles.textStyle18.copyWith(
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  const BestSellerRating(
                    bookPadges: 22,
                    bookRate: 0,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const ActionButton(),
                  const Expanded(
                    child: SizedBox(
                      height: 16,
                    ),
                  ),
                  const YouCanAlsoLikeSection(),
                  const SizedBox(
                    height: 32,
                  ),
                ],
              ),
            )
          ]),
    );
  }
}
