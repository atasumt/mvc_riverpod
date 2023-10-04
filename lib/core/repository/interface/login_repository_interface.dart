import 'package:riverpod_mvc/core/models/response/login_response_data/login_response_data.dart';

abstract class LoginRepositoryInterface {
  Future<LoginResponseData> login({
    required String? email,
    required String? password,
  });
}
