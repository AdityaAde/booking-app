import 'package:booking_app/utils/utils.dart';
import 'package:flutter/material.dart';

import '../../../../../config/theme/theme.dart';

class WelcomeDoneTitle extends StatelessWidget {
  const WelcomeDoneTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimen.w32),
      child: Column(
        children: [
          Text('Find Your Roomie', style: AppFont.h4),
          8.0.height,
          Text(
            'We\'ve helped millions across the nation find their perfect match... and you\'re next!',
            style: AppFont.paragraphMedium.copyWith(color: AppColor.ink02),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
