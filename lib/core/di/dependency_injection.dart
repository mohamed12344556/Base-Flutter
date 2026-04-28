import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../features/auth/data/repo/auth_repository.dart';
import '../../features/auth/ui/logic/auth_cubit.dart';
import '../api/api_file_service.dart';
import '../api/dio_factory.dart';
import '../config/environment_config.dart';
import '../core.dart';
import '../themes/cubit/color_theme_cubit.dart';

final sl = GetIt.instance;

Future<void> setupGetIt({EnvironmentConfig? config}) async {
  sl.registerSingleton<EnvironmentConfig>(
    config ?? EnvironmentConfig.development(),
  );

  Dio dio = DioFactory.getDio();

  sl.registerLazySingleton<ApiService>(() => ApiService(dio));

  sl.registerLazySingleton<ApiFileService>(() => ApiFileService(dio));

  sl.registerLazySingleton(() => ColorThemeCubit());

  sl.registerLazySingleton<AuthRepository>(() => AuthRepository(sl()));

  sl.registerLazySingleton<AuthCubit>(
    () => AuthCubit(sl<ApiService>(), sl<AuthRepository>()),
  );
}