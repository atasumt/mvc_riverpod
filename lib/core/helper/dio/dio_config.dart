import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

String kProdUrl = "https://api.deneme.com";

String kTestUrl = "https://reqres.in";

String kBaseUrl = kDebugMode ? kTestUrl : kProdUrl;

BaseOptions dioOptions = BaseOptions(
  baseUrl: kBaseUrl,
  responseType: ResponseType.json,
  headers: {'Accept': '/', 'Content-Type': 'application/json'},
);
