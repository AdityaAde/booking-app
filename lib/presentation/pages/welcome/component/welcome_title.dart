import 'package:booking_app/utils/utils.dart';
import 'package:flutter/material.dart';

import '../../../../config/theme/theme.dart';

class WelcomeTitle extends StatelessWidget {
  const WelcomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppDimen.w16),
      child: Column(
        children: [
          24.0.height,
          Text('Find the Perfect Roommate', style: AppFont.h3),
          Text(
            'We\'ve helped millions across the nation find their perfect match... and you\'re next!',
            style: AppFont.paragraphMedium,
          )
        ],
      ),
    );
  }
}
