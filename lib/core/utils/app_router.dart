import 'package:books_app/Features/Home/data/models/book_model/book_item_model.dart';
import 'package:books_app/Features/Home/data/repo/home_repo_implementation.dart';
import 'package:books_app/Features/Home/presentation/manager/simillerBooks/simillar_books_cubit.dart';
import 'package:books_app/Features/Home/presentation/view/book_details_views.dart';
import 'package:books_app/Features/Home/presentation/view/home_view.dart';
import 'package:books_app/Features/Search/presentation/view/search_view.dart';
import 'package:books_app/Features/splash/presentation/View/splash_view.dart';
import 'package:books_app/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimillarBooksCubit(
            getIt.get<HomeRepoimp>(),
          ),
          child: BookDetailsView(
            bookModel: state.extra as BookItemModel,
          ),
        ),
      ),
    ],
  );
}
