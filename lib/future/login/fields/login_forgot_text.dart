import 'package:flutter/material.dart';
import 'package:riverpod_mvc/core/widget/design/const_design.dart';

class LoginForgotText extends StatelessWidget {
  const LoginForgotText({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.only(top: 4),
        child: TextButton(
          onPressed: () {},
          style: ButtonStyle(
            shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                side: BorderSide(
              color: Colors.transparent,
            ))),
          ),
          child: Text(
            'Şifremi Unuttum',
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: kPrimaryColor,
                ),
          ),
        ),
      ),
    );
  }
}
