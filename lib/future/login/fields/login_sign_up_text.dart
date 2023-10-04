import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_mvc/core/widget/design/const_design.dart';

class LoginSignUpText extends StatelessWidget {
  const LoginSignUpText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
                text: 'Üye değil misiniz',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: kDisabledSecondaryColor)),
            TextSpan(
              text: 'Kayıt Ol',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: kSecondaryColor),
              recognizer: TapGestureRecognizer()..onTap = () {},
            ),
          ],
        ),
      ),
    );
  }
}
