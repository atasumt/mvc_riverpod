import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_mvc/core/extension/media_quary_extension.dart';
import 'package:riverpod_mvc/core/widget/design/const_design.dart';
import 'package:riverpod_mvc/future/login/button/login_button.dart';
import 'package:riverpod_mvc/future/login/controller/login_page_controller.dart';
import 'package:riverpod_mvc/future/login/fields/login_email_textfield.dart';
import 'package:riverpod_mvc/future/login/fields/login_forgot_text.dart';
import 'package:riverpod_mvc/future/login/fields/login_password_textfield.dart';
import 'package:riverpod_mvc/future/login/fields/login_sign_up_text.dart';
import 'package:riverpod_mvc/future/login/fields/login_title.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginFormKey = ref.watch(loginPageControllerProvider).loginFormKey;

    return Scaffold(
      backgroundColor: kCardColor,
      body: Padding(
        padding: const EdgeInsets.only(
          left: kDefaultBiggerPadding,
          right: kDefaultBiggerPadding,
        ),
        child: SingleChildScrollView(
          child: FormBuilder(
            key: loginFormKey,
            child: Padding(
              padding: const EdgeInsets.only(top: 180.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const LoginTitle(),
                  SizedBox(height: context.height * 0.08),
                  const LoginEmailTextfield(),
                  const LoginPasswordTextField(),
                  const LoginForgotText(),
                  const LoginButton(),
                  const SizedBox(height: 12),
                  const LoginSignUpText(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
