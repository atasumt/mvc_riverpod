import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_mvc/core/extension/media_quary_extension.dart';
import 'package:riverpod_mvc/core/widget/buttons/global_elevated_button.dart';
import 'package:riverpod_mvc/future/login/controller/login_page_controller.dart';

class LoginButton extends HookConsumerWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginFormKey = ref.watch(loginPageControllerProvider).loginFormKey;
    return GlobalElevatedButton(
      width: context.width,
      onPressed: () {
        if (loginFormKey.currentState!.validate()) {
          ref
              .read(loginPageControllerProvider)
              .login(
                email: loginFormKey.currentState!.fields["loginEmail"]?.value,
                password:
                    loginFormKey.currentState!.fields["loginPassword"]?.value,
              )
              .then((res) {
            if (res.token != null) {
              context.pushReplacement('/');
            }
          });
        }
      },
      text: 'Giriş Yap',
    );
  }
}
