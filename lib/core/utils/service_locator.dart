import 'package:bookly_app/Features/home/data/repos/home_repo_implementation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'api_services.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImp>(
    HomeRepoImp(
      getIt.get<ApiService>(),
    ),
  );
}
