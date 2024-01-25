import 'package:books_app/Features/Home/presentation/manager/featuerdBooksCubit/featuerd_books_cubit_cubit.dart';
import 'package:books_app/Features/Home/presentation/view/widgets/featuered_books_item.dart';
import 'package:books_app/core/widgets/custom_error_widget.dart';
import 'package:books_app/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatueredBooksListView extends StatelessWidget {
  const FeatueredBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 8),
        child: BlocBuilder<FeatuerdBooksCubitCubit, FeatuerdBooksState>(
          builder: (context, state) {
            if (state is FeatuerdBooksSuccess) {
              return SizedBox(
                height: MediaQuery.of(context).size.height * .3,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: state.bookItemModel.length,
                  itemBuilder: (context, index) {
                    return BooksImageItem(
                      imageUrl: state
                          .bookItemModel[index].volumeInfo.imageLinks.thumbnail,
                    );
                  },
                ),
              );
            } else if (state is FeatuerdBooksFailure) {
              return CustomErrorWidget(errMessage: state.errorMessage);
            } else {
              return const CustomLoadingIndicator();
            }
          },
        ));
  }
}
