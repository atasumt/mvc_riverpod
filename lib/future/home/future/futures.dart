import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_mvc/core/models/response/user_response_data/user_response_data.dart';
import 'package:riverpod_mvc/future/home/controller/home_page_controller.dart';

final userModelFutureProvider = FutureProvider.autoDispose
    .family<UserResponseData, String>((ref, page) async {
  final users =
      await ref.watch(homePageControllerProvider).getUsers(page: page);
  return users;
});
