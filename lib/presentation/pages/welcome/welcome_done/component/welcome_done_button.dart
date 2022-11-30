import 'package:flutter/material.dart';

import '../../../../../config/theme/theme.dart';
import '../../../../widget/widget.dart';

class WelcomeDoneButton extends StatelessWidget {
  const WelcomeDoneButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimen.w16),
      child: PrimaryButton(
        width: double.infinity,
        onPressed: () {},
        text: "Let's go",
      ),
    );
  }
}
