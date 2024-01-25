import 'package:books_app/Features/Home/presentation/manager/NewestBooksCubit/newest_books_cubit.dart';
import 'package:books_app/Features/Home/presentation/view/widgets/bestseller_item.dart';
import 'package:books_app/core/widgets/custom_error_widget.dart';
import 'package:books_app/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: BlocBuilder<NewestBooksCubit, NewestBooksState>(
        builder: (context, state) {
          if (state is NewestBooksSuccess) {
            return ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.newestBooksModel.length,
              itemBuilder: (context, index) {
                return BookItem(
                  bookModel: state.newestBooksModel[index],
                );
              },
            );
          } else if (state is NewestBooksFailuer) {
            return CustomErrorWidget(errMessage: state.errorMessage);
          } else {
            return const CustomLoadingIndicator();
          }
        },
      ),
    );
  }
}
