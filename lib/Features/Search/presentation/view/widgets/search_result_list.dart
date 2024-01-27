import 'package:books_app/Features/Home/data/models/book_model/book_item_model.dart';
import 'package:books_app/Features/Home/presentation/view/widgets/bestseller_item.dart';
import 'package:books_app/Features/Search/presentation/Manager/SearchCubit/search_cubit.dart';
import 'package:books_app/core/utils/app_router.dart';
import 'package:books_app/core/utils/assets_data.dart';
import 'package:books_app/core/utils/text_style.dart';
import 'package:books_app/core/widgets/custom_error_widget.dart';
import 'package:books_app/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Search Result',
                style: Styles.textStyle16,
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: false,
                    itemCount: state.searchBooksModel.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          GoRouter.of(context).push(AppRouter.kBookDetailsView,
                              extra: state.searchBooksModel[index]);
                        },
                        child: BookItem(
                          bookModel: state.searchBooksModel[index],
                        ),
                      );
                    }),
              ),
            ],
          );
        } else if (state is SearchFailuer) {
          return CustomErrorWidget(errMessage: state.errorMessage);
        } else if (state is SearchLoading) {
          return const CustomLoadingIndicator(hight: 1.0);
        } else {
          return Center(
            child: Image.asset(
              AssetsData.logoImage,
              width: MediaQuery.of(context).size.width * .6,
              height: MediaQuery.of(context).size.height * .6,
              fit: BoxFit.contain,
            ),
          );
        }
      },
    );
  }
}
