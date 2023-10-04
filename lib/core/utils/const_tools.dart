import 'package:flutter/services.dart';

var emailInputFormatter =
    FilteringTextInputFormatter.allow(RegExp(r'^[a-zA-Z0-9_\-=@,\.;]+$'));
