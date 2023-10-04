import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_mvc/core/helper/dio/fetch_dio.dart';
import 'package:riverpod_mvc/core/helper/error_response_handler.dart';
import 'package:riverpod_mvc/core/helper/logger.dart';
import 'package:riverpod_mvc/core/models/response/user_response_data/user_response_data.dart';
import 'package:riverpod_mvc/core/repository/interface/user_respository_interface.dart';
import 'package:riverpod_mvc/core/utils/end_point_consts.dart';

final userRepositoryProvider =
    Provider.autoDispose<UserRepositoryInterface>((ref) => UserRepository(ref));

class UserRepository implements UserRepositoryInterface {
  final Ref _ref;
  UserRepository(this._ref);

  @override
  Future<UserResponseData> getUsers(String? page) async {
    try {
      var response = await fetchDio()
          .get(EndPointConstants.usersEndPoint(page ?? '1'))
          .then((res) => UserResponseData.fromJson(res.data));
      return response;
    } catch (e) {
      logger().d(e.toString());
      return UserResponseData.fromJson(errorResponseHandler(e));
    }
  }
}
