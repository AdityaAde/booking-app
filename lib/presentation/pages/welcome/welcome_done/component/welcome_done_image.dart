import 'package:flutter/material.dart';

import '../../../../../config/theme/theme.dart';
import '../../../../../data/src/img_string.dart';

class WelcomeDoneImage extends StatelessWidget {
  const WelcomeDoneImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimen.w16),
      child: Image.asset(ImgString.cittaAvatarBackdrop),
    ));
  }
}
