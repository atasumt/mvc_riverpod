import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_mvc/core/interface/controller_interface.dart';
import 'package:riverpod_mvc/core/models/response/login_response_data/login_response_data.dart';
import 'package:riverpod_mvc/core/repository/login_repository.dart';

final loginPageControllerProvider =
    Provider.autoDispose((ref) => LogingPageController(ref));

class LogingPageController implements ControllerInterface {
  final Ref _ref;
  LogingPageController(this._ref);

  GlobalKey<FormBuilderState> loginFormKey = GlobalKey<FormBuilderState>();

  @override
  Future<void> initState() async {}

  @override
  void dispose() {}

  Future<LoginResponseData> login({
    required String? email,
    required String? password,
  }) async {
    var response = await _ref
        .read(loginRepositoryProvider)
        .login(email: email, password: password);
    return response;
  }
}
