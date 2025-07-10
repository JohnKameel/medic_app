import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:medic_app/core/networking/api_service.dart';
import 'package:medic_app/core/networking/dio_factory.dart';

import '../../features/login/data/repo/login_repo.dart';
import '../../features/login/presentation/view_model/login_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  Dio dio = await DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
   getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
   getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
}