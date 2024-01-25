import 'package:books_app/Features/Home/data/repo/home_repo_implementation.dart';
import 'package:books_app/Features/Home/presentation/manager/NewestBooksCubit/newest_books_cubit.dart';
import 'package:books_app/Features/Home/presentation/manager/featuerdBooksCubit/featuerd_books_cubit_cubit.dart';
import 'package:books_app/constent.dart';
import 'package:books_app/core/utils/app_router.dart';
import 'package:books_app/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  serviceLocator();
  runApp(const BooksApp());
}

class BooksApp extends StatelessWidget {
  const BooksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeatuerdBooksCubitCubit(
            getIt.get<HomeRepoimp>(),
          )..getFeatuerdBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoimp>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
