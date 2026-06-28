import 'package:api_test/core/api/api_service.dart';
import 'package:api_test/core/func/set_up_dio.dart';
import 'package:api_test/features/home/data/repos/get_users_repo.dart';
import 'package:api_test/features/home/presentation/cubit/get_user_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerLazySingleton<Dio>(() => setUpDio());
  getIt.registerLazySingleton<ApiService>(() => ApiService(getIt<Dio>()));
  getIt.registerLazySingleton<GetUsersRepo>(
    () => GetUsersRepo(getIt<ApiService>()),
  );

  getIt.registerFactory<GetUserCubit>(
    () => GetUserCubit(repo: getIt<GetUsersRepo>()),
  );
}
