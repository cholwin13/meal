import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:meal/blocs/fav/fav_bloc.dart';
import 'package:meal/blocs/receipt/receipt_bloc.dart';
import 'package:meal/data/datasource/remote/receiptDataSource.dart';
import 'package:meal/data/repository/receipt_repository.dart';
import 'package:meal/domain/usecase/receipt_list_usecase.dart';

import 'network/api_constants.dart';
import 'network/api_service.dart';

GetIt injector = GetIt.instance;

Future<void> initializeDependencies() async {
  //bloc
  injector.registerFactory(() => FavBloc());
  injector.registerFactory(() => ReceiptBloc(injector()));

  //data source
  injector.registerLazySingleton<ReceiptListDataSource>(() => ReceiptListDataSourceImpl(injector()));

  //repository
  injector.registerLazySingleton<ReceiptRepository>(() => ReceiptRepositoryImpl(injector()));

  //use cases
  injector.registerLazySingleton<ReceiptListUseCase>(() => ReceiptListUseCase(injector()));

  final dio = Dio();
  dio.options = BaseOptions(
    // headers: {
    //   headerKey: headerKeyValue
    // },
    headers: {
      "x-api-key": headerKeyValue
    },
  );

  // dio.interceptors.add(LogInterceptor(responseBody: true));
  // dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
  injector.registerSingleton<Dio>(dio);
  injector.registerSingleton<ApiService>(ApiService(injector()));
}
