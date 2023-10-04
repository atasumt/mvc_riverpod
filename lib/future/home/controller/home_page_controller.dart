import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_mvc/core/interface/controller_interface.dart';
import 'package:riverpod_mvc/core/models/response/user_response_data/user_response_data.dart';
import 'package:riverpod_mvc/core/repository/user_repository.dart';

final homePageControllerProvider =
    Provider.autoDispose((ref) => HomePageController(ref));

class HomePageController implements ControllerInterface {
  final Ref _ref;
  HomePageController(this._ref);

  @override
  Future<void> initState() async {}

  @override
  void dispose() {}

  Future<UserResponseData> getUsers({required String page}) async {
    var response = await _ref.read(userRepositoryProvider).getUsers(page);
    return response;
  }
}
