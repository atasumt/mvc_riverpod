import 'package:dio/dio.dart';
import 'package:riverpod_mvc/core/extension/enums/error_status_enum.dart';
import 'package:riverpod_mvc/core/helper/info_handler_widget.dart';
import 'package:riverpod_mvc/core/models/response/error_response_data/error_response_data.dart';
import 'package:riverpod_mvc/core/settings/settings.dart';
import 'package:riverpod_mvc/core/utils/routes.dart';

InterceptorsWrapper dioMainInterceptor() {
  return InterceptorsWrapper(onRequest: (requestOptions, handler) {
    Settings settings = Settings();

    settings.initStorage();
    requestOptions.queryParameters
        .removeWhere((key, value) => value == "" || value == null);

    if (settings.token != '') {
      requestOptions.headers
          .addAll({'Authorization': 'Bearer ${settings.token}'});
    }

    return handler.next(requestOptions);
  }, onResponse: (response, handler) {
    return handler.next(response);
    // ignore: deprecated_member_use
  }, onError: (DioError e, handler) {
    ErrorResponseData response = ErrorResponseData.fromJson(e.response?.data);
    infoHandlerWidget(globalCtx, '${response.error}', '', ErrorStatusEnum.ERROR);
    return handler.next(e);
  });
}
