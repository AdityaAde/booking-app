import 'package:flutter/material.dart';

import '../../../../config/theme/theme.dart';
import 'component/component.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.ink05,
      body: Column(
        children: const [
          FavoriteTitle(),
          FavoriteHeader(),
          FavoriteList(),
        ],
      ),
    );
  }
}
