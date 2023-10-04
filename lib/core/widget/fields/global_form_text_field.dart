import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:riverpod_mvc/core/widget/design/const_design.dart';
import 'package:riverpod_mvc/core/widget/design/const_style.dart';

class GlobalFormTextField extends StatelessWidget {
  final String name;
  final dynamic initialValue;
  final bool enableInteractiveSelection;
  final InputDecoration decoration;
  final void Function(String?)? onChanged;
  final String? Function(String?)? validator;
  final void Function()? onTap;
  final TextInputAction? textInputAction;
  final void Function(String?)? onSubmitted;
  final dynamic Function(String?)? valueTransformer;
  final bool expands;
  final bool enabled;
  final TextAlign? textAlign;
  final bool readOnly;
  final bool obscureText;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String title;
  final TextStyle? titleStyle;
  final Color? fillColor;
  final bool autofocus;
  final AutovalidateMode autovalidateMode;
  final String hintText;
  final String? labelText;
  final TextStyle? valueStyle;
  final EdgeInsetsGeometry contentPadding;
  final TextEditingController? controller;
  final int? maxLength;
  final FocusNode? focusNode;
  final String? counterText;
  final TextAlignVertical? textAlignVertical;
  final TextStyle? hintStyle;
  final TextCapitalization textCapitalization;
  final int? maxLines;
  final int? minLines;
  const GlobalFormTextField({
    super.key,
    required this.name,
    this.textAlign = TextAlign.start,
    this.initialValue,
    this.enableInteractiveSelection = true,
    this.validator,
    this.onChanged,
    this.onSubmitted,
    this.decoration = const InputDecoration(),
    this.onTap,
    this.textInputAction,
    this.valueTransformer,
    this.expands = false,
    this.enabled = true,
    this.readOnly = false,
    this.obscureText = false,
    this.keyboardType = TextInputType.visiblePassword,
    this.inputFormatters,
    this.prefixIcon,
    this.suffixIcon,
    this.title = '',
    this.titleStyle,
    this.fillColor,
    this.autofocus = false,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.hintText = "",
    this.labelText,
    this.valueStyle,
    this.contentPadding = const EdgeInsets.all(kFieldInnerPadding),
    this.controller,
    this.counterText,
    this.maxLength,
    this.textAlignVertical = TextAlignVertical.center,
    this.hintStyle,
    this.textCapitalization = TextCapitalization.none,
    this.focusNode,
    this.maxLines = 1,
    this.minLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: kFieldDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title != ''
              ? Padding(
                  padding: const EdgeInsets.only(bottom: 2.0),
                  child: Text(
                    title,
                    style:
                        titleStyle ?? Theme.of(context).textTheme.titleSmall!,
                  ),
                )
              : Container(),
          FormBuilderTextField(
            key: key,
            focusNode: focusNode,
            autofocus: autofocus,
            autovalidateMode: autovalidateMode,
            maxLines: expands ? null : maxLines,
            minLines: expands ? null : minLines,
            expands: expands,
            style: valueStyle ?? globalDefaultFieldValueStyle(context),
            name: name,
            enabled: enabled,
            maxLength: maxLength,
            textInputAction: textInputAction ?? TextInputAction.next,
            controller: controller,
            readOnly: readOnly,
            obscureText: obscureText,
            textAlign: textAlign!,
            initialValue: initialValue,
            onChanged: onChanged,
            validator: validator,
            keyboardType: keyboardType,
            inputFormatters: inputFormatters,
            textCapitalization: textCapitalization,
            textAlignVertical: textAlignVertical,
            decoration: decoration.copyWith(
                contentPadding: contentPadding,
                fillColor: fillColor ?? kFieldColor,
                filled: true,
                hintText: hintText,
                labelText: labelText,
                counterText: counterText,
                errorStyle: const TextStyle(fontSize: 0.01),
                hintStyle: hintStyle ??
                    globalFieldHintStyle(context)
                        .copyWith(color: enabled ? null : kDisabledColor),
                labelStyle: globalFieldLabelStyle(context)
                    .copyWith(color: enabled ? null : kDisabledColor),
                prefixIcon: prefixIcon != null
                    ? Padding(
                        padding: const EdgeInsets.only(
                            top: 14, left: 10, right: 10, bottom: 4),
                        child: prefixIcon)
                    : null,
                suffixIcon: suffixIcon != null
                    ? Padding(
                        padding: const EdgeInsets.only(
                            top: 14, left: 10, right: 10, bottom: 4),
                        child: suffixIcon,
                      )
                    : null),
            onTap: onTap,
            onSubmitted: onSubmitted,
            valueTransformer: valueTransformer,
          ),
        ],
      ),
    );
  }
}
