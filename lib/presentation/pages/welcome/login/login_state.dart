import 'package:flutter/material.dart';

import '../../../../config/config.dart';

class LoginState {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  HttpStateStatus httpStateStatus = HttpStateStatus.idle;
  LoginState init() {
    return LoginState();
  }

  LoginState clone() {
    return LoginState();
  }
}
