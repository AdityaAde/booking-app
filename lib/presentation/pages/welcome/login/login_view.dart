import 'package:booking_app/presentation/pages/welcome/login/component/login_footer.dart';
import 'package:booking_app/presentation/pages/welcome/login/component/login_form.dart';
import 'package:booking_app/presentation/pages/welcome/login/component/login_image.dart';
import 'package:booking_app/utils/utils.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              16.0.height,
              const LoginImage(),
              48.0.height,
              const LoginForm(),
              16.0.height,
              const LoginFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
