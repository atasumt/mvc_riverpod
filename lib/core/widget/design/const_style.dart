import 'package:flutter/material.dart';

TextStyle globalDefaultFieldValueStyle(
  BuildContext context,
) {
  return Theme.of(context)
      .textTheme
      .titleSmall!
      .copyWith(fontWeight: FontWeight.normal);
}

TextStyle globalFieldHintStyle(BuildContext context) {
  return Theme.of(context).textTheme.titleSmall!.copyWith(
      fontSize: 14,
      color: const Color(0xffB5BFC8),
      fontWeight: FontWeight.w500);
}

TextStyle globalFieldLabelStyle(BuildContext context) {
  return Theme.of(context).textTheme.titleSmall!.copyWith(
      fontSize: 15,
      fontWeight: FontWeight.normal,
      color: const Color(0xff666666));
}
