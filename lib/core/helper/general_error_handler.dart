// ignore_for_file: avoid_dynamic_calls

import 'package:flutter/material.dart';

/// This handles what should be returned on awaited future error.
Widget generalErrorHandler(BuildContext context) {
  return Text(
    "error.unknown",
    style: Theme.of(context).textTheme.titleSmall,
  );
}
