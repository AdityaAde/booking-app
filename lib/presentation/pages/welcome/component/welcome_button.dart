import 'package:booking_app/utils/utils.dart';
import 'package:flutter/material.dart';

import '../../../../config/theme/theme.dart';
import '../../../widget/widget.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimen.w16),
      child: Row(
        children: [
          Expanded(
            child: PrimaryButton(
              onPressed: () {},
              text: 'Explore',
              type: PrimaryButtonType.type3,
            ),
          ),
          16.0.width,
          Expanded(
            child: SecondaryButton(
              onPressed: () {},
              text: 'Login',
              type: SecondaryType.type3,
            ),
          ),
        ],
      ),
    );
  }
}
