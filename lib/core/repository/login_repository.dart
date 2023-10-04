import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_mvc/core/helper/dio/fetch_dio.dart';
import 'package:riverpod_mvc/core/helper/error_response_handler.dart';
import 'package:riverpod_mvc/core/models/response/login_response_data/login_response_data.dart';
import 'package:riverpod_mvc/core/repository/interface/login_repository_interface.dart';
import 'package:riverpod_mvc/core/settings/settings.dart';
import 'package:riverpod_mvc/core/utils/end_point_consts.dart';

final loginRepositoryProvider = Provider.autoDispose<LoginRepositoryInterface>(
    (ref) => LoginRepository(ref));

class LoginRepository implements LoginRepositoryInterface {
  final Ref _ref;
  LoginRepository(this._ref);

  @override
  Future<LoginResponseData> login({
    required String? email,
    required String? password,
  }) async {
    try {
      final data = {"email": email, "password": password};

      var response = await fetchDio()
          .post(EndPointConstants.loginEndPoint, data: data)
          .then(
            (res) => LoginResponseData.fromJson(res.data),
          );

      Settings settings = Settings();

      if (response.token != null) {
        await settings.storage
            .write(key: "token", value: response.token.toString());
      }
      return response;
    } catch (e) {
      return LoginResponseData.fromJson(errorResponseHandler(e) ?? {});
    }
  }
}
