import 'package:get_it/get_it.dart';
import 'package:mobilebanking/services/request_service.dart';
import 'package:mobilebanking/services/storage/storage_service_impl.dart';

final GetIt serviceLocator = GetIt.instance;

void setupServiceLocator() {
  serviceLocator.registerLazySingleton(() => RequestService());
  serviceLocator.registerLazySingleton(() => StorageSericeimpl());
}
