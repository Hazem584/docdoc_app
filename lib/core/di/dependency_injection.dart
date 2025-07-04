import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:learn/core/networking/api_service.dart';
import 'package:learn/core/networking/dio_factory.dart';
import 'package:learn/features/home/data/apis/home_api_service.dart';
import 'package:learn/features/login/data/repos/login_repo.dart';
import 'package:learn/features/login/logic/login_cubit.dart';
import 'package:learn/features/signup/data/repos/sign_up_repo.dart';
import 'package:learn/features/signup/logic/sign_up_cubit.dart';

import '../../features/home/data/repos/home_repos.dart';
import '../../features/home/logic/home_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = await DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  // Login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
  // signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

  // home
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
   getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));

}