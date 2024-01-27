import 'package:books_app/Features/Home/data/models/book_model/book_item_model.dart';
import 'package:books_app/Features/Home/presentation/manager/simillerBooks/simillar_books_cubit.dart';
import 'package:books_app/Features/Home/presentation/view/widgets/featuered_books_item.dart';
import 'package:books_app/core/utils/app_router.dart';
import 'package:books_app/core/widgets/custom_error_widget.dart';
import 'package:books_app/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class YouCanAlsoLikeList extends StatelessWidget {
  const YouCanAlsoLikeList({super.key, required this.bookModel});
  final BookItemModel bookModel;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimillarBooksCubit, SimillarBooksState>(
      builder: (context, state) {
        if (state is SimillarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.simillarBooksModel.length,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).replace(AppRouter.kBookDetailsView,
                          extra: state.simillarBooksModel[index]);
                    },
                    child: BooksImageItem(
                      imageUrl: state.simillarBooksModel[index].volumeInfo
                                  .imageLinks?.thumbnail ==
                              null
                          ? 'https://picsum.photos/200/300?random=1'
                          : state.simillarBooksModel[index].volumeInfo
                              .imageLinks!.thumbnail,
                    ),
                  ),
                );
              }),
            ),
          );
        } else if (state is SimillerBooksFailuer) {
          return CustomErrorWidget(errMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator(
            hight: .15,
          );
        }
      },
    );
  }
}
