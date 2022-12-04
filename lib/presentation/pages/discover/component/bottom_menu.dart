import 'package:booking_app/presentation/pages/discover/discover_cubit.dart';
import 'package:booking_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../discover_state.dart';

class DiscoverBottomMenu extends StatelessWidget {
  const DiscoverBottomMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiscoverCubit, DiscoverState>(
      builder: (context, state) {
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
                isSelected:
                    context.read<DiscoverCubit>().state.selectedIndex == 0,
                onPressed: () => context.read<DiscoverCubit>().changeIndex(0),
              ),
              _buildItem(
                icon: Icons.favorite,
                title: 'Favorite',
                isSelected:
                    context.read<DiscoverCubit>().state.selectedIndex == 1,
                onPressed: () => context.read<DiscoverCubit>().changeIndex(1),
              ),
              _buildItem(
                icon: Icons.settings,
                title: 'Settings',
                isSelected:
                    context.read<DiscoverCubit>().state.selectedIndex == 2,
                onPressed: () => context.read<DiscoverCubit>().changeIndex(2),
              )
            ],
          ),
        );
      },
    );
  }

  Widget _buildItem({
    required IconData icon,
    required String title,
    required bool isSelected,
    VoidCallback? onPressed,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
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
