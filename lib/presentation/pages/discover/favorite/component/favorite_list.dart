import 'package:booking_app/config/theme/app_dimen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteList extends StatelessWidget {
  const FavoriteList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (c, i) {
          return _listItem();
        },
      ),
    );
  }

  Widget _listItem() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: AppDimen.h16),
      height: 90.h,
      child: Card(
        child: ListTile(
          title: const Text('Aditya'),
          subtitle: const Text('Indonesia'),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_forward_ios, size: 18),
          ),
        ),
      ),
    );
  }
}
