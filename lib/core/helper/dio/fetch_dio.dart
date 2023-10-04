import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:riverpod_mvc/core/helper/dio/dio_config.dart';
import 'package:riverpod_mvc/core/interceptor/dio_main_interceptor.dart';

/// Prefer Sending [dioOptions] variable with copyWith for changing options.
Dio fetchDio({BaseOptions? basedioOptions}) {
  Dio dio = Dio(basedioOptions ?? dioOptions);
  dio.interceptors
    ..add(dioMainInterceptor())
    ..add(PrettyDioLogger(
      requestBody: true,
      responseHeader: false,
    ));
  return dio;
}
