import 'package:books_app/Features/Home/data/models/book_model/book_item_model.dart';
import 'package:books_app/Features/Home/presentation/view/widgets/action_button.dart';
import 'package:books_app/Features/Home/presentation/view/widgets/bestseller_rating.dart';
import 'package:books_app/Features/Home/presentation/view/widgets/custom_books_details_appbar.dart';
import 'package:books_app/Features/Home/presentation/view/widgets/featuered_books_item.dart';
import 'package:books_app/Features/Home/presentation/view/widgets/you_can_also_like_section.dart';
import 'package:books_app/core/utils/text_style.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key, required this.bookModel});

  final BookItemModel bookModel;

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
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .35,
                    child: BooksImageItem(
                      imageUrl:
                          bookModel.volumeInfo.imageLinks?.thumbnail == null
                              ? 'https://picsum.photos/200/300?random=1'
                              : bookModel.volumeInfo.imageLinks!.thumbnail,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "${bookModel.volumeInfo.title}",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: Styles.textStyle30,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Opacity(
                    opacity: .7,
                    child: Text(
                      bookModel.volumeInfo.authors![0],
                      style: Styles.textStyle18.copyWith(
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  BestSellerRating(
                    bookPadges: bookModel.volumeInfo.ratingsCount ?? 0,
                    bookRate: bookModel.volumeInfo.averageRating ?? 0,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const ActionButton(),
                  const SizedBox(
                    height: 16,
                  ),
                  YouCanAlsoLikeSection(bookModel: bookModel),
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
