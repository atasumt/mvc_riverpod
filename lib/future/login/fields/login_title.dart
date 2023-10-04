import 'package:flutter/material.dart';
import 'package:riverpod_mvc/core/widget/design/const_design.dart';

class LoginTitle extends StatelessWidget {
  const LoginTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: kDefaultBiggerPadding),
      child: Text(
        'Giriş Yap',
        style: Theme.of(context).textTheme.displayLarge!,
      ),
    );
  }
}
