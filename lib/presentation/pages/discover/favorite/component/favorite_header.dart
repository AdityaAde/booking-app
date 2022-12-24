import 'package:booking_app/config/theme/theme.dart';
import 'package:booking_app/data/src/img_string.dart';
import 'package:booking_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteHeader extends StatelessWidget {
  const FavoriteHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(AppDimen.w16),
      padding: EdgeInsets.all(AppDimen.w8),
      height: 162.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        children: [
          Image.asset(ImgString.cittaPlants1),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Italy', style: AppFont.paragraphSmall),
              8.0.height,
              Text(
                'Meet new roomies and find new adventures.',
                style: AppFont.h4,
              ),
            ],
          ))
        ],
      ),
    );
  }
}
