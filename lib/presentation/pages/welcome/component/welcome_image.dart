import 'package:flutter/material.dart';

import '../../../../data/src/img_string.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Image.asset(
      ImgString.cittaGiantPhone,
      fit: BoxFit.contain,
    ));
  }
}
