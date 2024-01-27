import 'package:books_app/Features/Home/data/models/book_model/book_item_model.dart';
import 'package:books_app/Features/Search/data/Ripo/search_repo_imp.dart';
import 'package:books_app/Features/Search/presentation/Manager/SearchCubit/search_cubit.dart';
import 'package:books_app/Features/Search/presentation/view/widgets/search_view_body.dart';
import 'package:books_app/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key, this.bookModel});
  final BookItemModel? bookModel;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(
        getIt.get<SearchRepoImp>(),
      ),
      child: const Scaffold(
        body: SafeArea(child: SearchViewBody()),
      ),
    );
  }
}
