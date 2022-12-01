import 'package:booking_app/config/theme/app_dimen.dart';
import 'package:booking_app/config/theme/app_font.dart';
import 'package:booking_app/presentation/widget/app_input_text.dart';
import 'package:booking_app/presentation/widget/widget.dart';
import 'package:booking_app/utils/utils.dart';
import 'package:flutter/cupertino.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimen.w24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Login', style: AppFont.h3),
          16.0.height,
          const AppInputText(label: 'Login'),
          16.0.height,
          const AppInputText(label: 'Password'),
          16.0.height,
          PrimaryButton(
            onPressed: () {},
            text: 'Login',
            width: double.infinity,
            type: PrimaryButtonType.type3,
          )
        ],
      ),
    );
  }
}
