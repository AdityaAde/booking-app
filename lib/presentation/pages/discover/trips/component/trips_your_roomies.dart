import 'package:booking_app/config/theme/theme.dart';
import 'package:booking_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../data/models/models.dart';
import '../../../../../data/src/img_string.dart';

class TripsYourRoomies extends StatelessWidget {
  const TripsYourRoomies({Key? key, required this.yourRoomies})
      : super(key: key);
  final List<Trip> yourRoomies;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          _header(),
          _roomiesList(context),
        ],
      ),
    );
  }

  Widget _roomiesList(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (c, i) => _roomiesItem(yourRoomies[i]),
        itemCount: yourRoomies.length,
      ),
    );
  }

  Widget _roomiesItem(Trip trip) {
    return Container(
      height: 72,
      margin: EdgeInsets.only(
          bottom: AppDimen.h16, left: AppDimen.w16, right: AppDimen.w16),
      padding:
          EdgeInsets.symmetric(horizontal: AppDimen.w16, vertical: AppDimen.h8),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.ink06,
        borderRadius: BorderRadius.circular(AppDimen.w8),
      ),
      child: Row(
        children: [
          _avatar(),
          8.0.width,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  trip.name ?? '',
                  style: AppFont.paragraphMediumBold,
                ),
                Text(
                  trip.location ?? '',
                  style: AppFont.paragraphSmall.copyWith(
                    color: AppColor.ink02,
                  ),
                ),
              ],
            ),
          ),
          const Icon(Icons.more_vert)
        ],
      ),
    );
  }

  Widget _avatar() {
    return SizedBox(
      height: 56.w,
      width: 56.w,
      child: Stack(
        children: [
          Center(
            child: CircleAvatar(
              radius: 28.w,
              backgroundColor: AppColor.ink03,
            ),
          ),
          Center(
            child: CircleAvatar(
              radius: 26.w,
              backgroundColor: AppColor.ink06,
              backgroundImage: const AssetImage(ImgString.avatar),
            ),
          )
        ],
      ),
    );
  }

  Widget _header() {
    return Padding(
      padding: EdgeInsets.only(
        left: AppDimen.w16,
        right: AppDimen.w16,
        top: AppDimen.h60,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            "Your Roomies",
            style: AppFont.h3,
          ),
          const Expanded(child: SizedBox()),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: AppColor.ink02,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.star,
                color: AppColor.ink02,
              )),
        ],
      ),
    );
  }
}
