import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:riverpod_mvc/core/utils/const_tools.dart';
import 'package:riverpod_mvc/core/widget/fields/global_form_text_field.dart';

class LoginEmailTextfield extends StatelessWidget {
  const LoginEmailTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalFormTextField(
        name: "loginEmail",
        title: "E-posta",
        hintText: "E-posta",
        keyboardType: TextInputType.emailAddress,
        inputFormatters: [
          emailInputFormatter,
        ],
        validator: FormBuilderValidators.compose([
          FormBuilderValidators.required(),
          FormBuilderValidators.email(),
        ]));
  }
}
