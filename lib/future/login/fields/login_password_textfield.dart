import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:riverpod_mvc/core/widget/design/const_design.dart';
import 'package:riverpod_mvc/core/widget/fields/global_form_text_field.dart';

class LoginPasswordTextField extends HookWidget {
  const LoginPasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final obscureText = useState(true);
    return Padding(
      padding: const EdgeInsets.only(top: kFieldDefaultPadding),
      child: GlobalFormTextField(
          name: "loginPassword",
          title: "Şifre",
          hintText: "Şifre belirleyiniz",
          obscureText: obscureText.value,
          suffixIcon: GestureDetector(
              onTap: () {
                obscureText.value = !(obscureText.value);
              },
              child: obscureText.value
                  ? FaIcon(
                      FontAwesomeIcons.eyeSlash,
                      size: 24,
                      color: kAppBarColor.withOpacity(0.5),
                    )
                  : FaIcon(
                      FontAwesomeIcons.eye,
                      size: 24,
                      color: kAppBarColor.withOpacity(0.5),
                    )),
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
          ])),
    );
  }
}
