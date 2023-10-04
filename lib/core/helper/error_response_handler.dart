// ignore_for_file: avoid_dynamic_calls

import 'package:dio/dio.dart';

/// a handler for returning exception with converting to [ResponseMain] and abstracting data
/// sometimes data comes but with error status code. thus we need to convert data and return back for handling ui when code enters catch
dynamic errorResponseHandler(
  Object e,
) {
  var exception = e as DioException;
  var responseData = exception.response?.data;
  return responseData.data;
}
