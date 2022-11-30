import 'package:booking_app/config/theme/app_color.dart';
import 'package:booking_app/utils/utils.dart';
import 'package:flutter/material.dart';

import 'component/component.dart';

class WelcomeDonePage extends StatelessWidget {
  const WelcomeDonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.accentGreen,
      body: Column(
        children: [
          102.0.height,
          const WelcomeDoneImage(),
          24.0.height,
          const WelcomeDoneTitle(),
          24.0.height,
          const WelcomeDoneButton(),
          95.0.height,
        ],
      ),
    );
  }
}
