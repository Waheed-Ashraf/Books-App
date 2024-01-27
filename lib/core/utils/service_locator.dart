import 'package:books_app/Features/Home/data/repo/home_repo_implementation.dart';
import 'package:books_app/Features/Search/data/Ripo/search_repo_imp.dart';
import 'package:books_app/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void serviceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoimp>(
    HomeRepoimp(
      getIt.get<ApiService>(),
    ),
  );
  getIt.registerSingleton<SearchRepoImp>(
    SearchRepoImp(
      getIt.get<ApiService>(),
    ),
  );
}
