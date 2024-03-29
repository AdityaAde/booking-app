import 'package:booking_app/config/theme/app_color.dart';
import 'package:booking_app/config/theme/app_font.dart';
import 'package:booking_app/utils/utils.dart';
import 'package:flutter/material.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Forgot Password? ',
                style: AppFont.paragraphSmall.copyWith(color: AppColor.ink02),
              ),
              TextSpan(text: ' Forgot', style: AppFont.paragraphSmallBold),
            ],
          ),
        ),
        8.0.height,
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Don\'t have an account?  ',
                style: AppFont.paragraphSmall.copyWith(color: AppColor.ink02),
              ),
              TextSpan(text: ' Create new', style: AppFont.paragraphSmallBold),
            ],
          ),
        ),
      ],
    );
  }
}
