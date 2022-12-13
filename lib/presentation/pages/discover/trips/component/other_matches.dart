import 'package:booking_app/config/theme/theme.dart';
import 'package:booking_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../data/src/img_string.dart';

class OtherMatches extends StatelessWidget {
  const OtherMatches({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _header(),
        _roomiesList(),
      ],
    ));
  }

  Widget _header() {
    return Padding(
      padding: EdgeInsets.only(
        left: AppDimen.w16,
        right: AppDimen.w16,
        top: AppDimen.h24,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text('Other Matches', style: AppFont.h3),
          const Expanded(child: SizedBox()),
        ],
      ),
    );
  }

  Widget _roomiesList() {
    return Expanded(
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) => _otherMatchesItem(context),
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Widget _otherMatchesItem(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: AppDimen.w16,
        top: AppDimen.h24,
        bottom: AppDimen.h16,
      ),
      padding: EdgeInsets.only(
        right: AppDimen.w16,
        left: AppDimen.w16,
        bottom: AppDimen.h16,
        top: 49.h,
      ),
      width: (MediaQuery.of(context).size.width / 2) - AppDimen.w38,
      decoration: BoxDecoration(
        color: AppColor.ink06,
        borderRadius: BorderRadius.circular(AppDimen.w16),
      ),
      child: Column(
        children: [
          Expanded(child: Image.asset(ImgString.cittaPlants)),
          37.0.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Fandi', style: AppFont.paragraphLargeBold),
              Text('\$500', style: AppFont.paragraphSmall),
            ],
          )
        ],
      ),
    );
  }
}
