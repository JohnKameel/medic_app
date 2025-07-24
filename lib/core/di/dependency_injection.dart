import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:medic_app/core/networking/api_service.dart';
import 'package:medic_app/core/networking/dio_factory.dart';
import 'package:medic_app/features/home/data/api/home_api_service.dart';
import 'package:medic_app/features/home/data/repo/home_repo.dart';
import 'package:medic_app/features/home/presentation/view_model/home_cubit.dart';
import 'package:medic_app/features/sign_up/data/repo/sign_up_repo.dart';
import 'package:medic_app/features/sign_up/presentation/view_model/sign_up_cubit.dart';

import '../../features/login/data/repo/login_repo.dart';
import '../../features/login/presentation/view_model/login_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  Dio dio = await DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

  // home
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));
}
