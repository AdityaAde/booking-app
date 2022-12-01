import 'package:booking_app/config/theme/app_color.dart';
import 'package:booking_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiscoverBottomMenu extends StatelessWidget {
  const DiscoverBottomMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96.h,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildItem(
            icon: Icons.location_on_sharp,
            title: 'Location',
            isSelected: true,
          ),
          _buildItem(
            icon: Icons.favorite,
            title: 'Favorite',
            isSelected: false,
          ),
          _buildItem(
            icon: Icons.settings,
            title: 'Settings',
            isSelected: false,
          )
        ],
      ),
    );
  }

  Widget _buildItem({
    required IconData icon,
    required String title,
    required bool isSelected,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(icon),
          color: isSelected ? Colors.black : Colors.grey,
        ),
        4.0.height,
        Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.black : Colors.grey,
            fontSize: 12.0.sp,
          ),
        ),
      ],
    );
  }
}
