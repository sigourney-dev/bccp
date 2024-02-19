import 'package:bccp/data/repositories_impl/lead_repository_impl.dart';
import 'package:bccp/domain/repositories/lead_repository.dart';
import 'package:bccp/presentation/screens/lead/lead_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'data/repositories_impl/user_repository_impl.dart';
import 'di.config.dart';
import 'domain/repositories/user_repository.dart';
import 'presentation/screens/account/account_cubit.dart';
import 'data/data_sources/bloc/app_cubit.dart';
import 'package:bccp/data/repositories_impl/auth_repository_impl.dart';
import 'package:bccp/data/repositories_impl/home_repository_impl.dart';
import 'package:bccp/domain/repositories/auth_repository.dart';
import 'package:bccp/domain/repositories/home_repository.dart';
import 'package:bccp/presentation/screens/home/home_cubit.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
Future<void> configureDependencies() async {
  getIt.init();

// cubit
  getIt.registerLazySingleton<AppCubit>(() => AppCubit());
  getIt.registerLazySingleton<AccountCubit>(() => AccountCubit());
  getIt.registerLazySingleton<HomeCubit>(() => HomeCubit());
  getIt.registerLazySingleton<LeadCubit>(() => LeadCubit());

// repository
  getIt.registerLazySingleton<UserRepository>(() => UserRepositoryImpl());
  getIt.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl());
  getIt.registerLazySingleton<HomeRepository>(() => HomeRepositoryImpl());
  getIt.registerLazySingleton<LeadRepository>(() => LeadRepositoryImpl());
}
