import 'package:riverpod_mvc/core/models/response/user_response_data/user_response_data.dart';

abstract class UserRepositoryInterface {
  Future<UserResponseData> getUsers(String? page);
}
