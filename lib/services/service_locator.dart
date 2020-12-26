import 'package:get_it/get_it.dart';
import 'package:mobilebanking/services/api_service.dart';
import 'package:mobilebanking/services/auth/auth_service.dart';
import 'package:mobilebanking/services/auth/auth_service_impl.dart';
import 'package:mobilebanking/services/request_service.dart';
import 'package:mobilebanking/services/storage/storage_service.dart';
import 'package:mobilebanking/services/storage/storage_service_impl.dart';

final GetIt serviceLocator = GetIt.instance;

void setupServiceLocator() {
  serviceLocator.registerLazySingleton<RequestService>(() => RequestService());
  serviceLocator
      .registerLazySingleton<StorageService>(() => StorageSericeimpl());
  serviceLocator.registerLazySingleton<ApiService>(() => ApiService());
  serviceLocator.registerLazySingleton<AuthService>(() => AuthServiceImpl());
}
