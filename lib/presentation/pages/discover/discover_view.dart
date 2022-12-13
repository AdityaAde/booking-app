import 'package:booking_app/config/theme/app_color.dart';
import 'package:booking_app/presentation/pages/discover/component/bottom_menu.dart';
import 'package:booking_app/presentation/pages/discover/discover_cubit.dart';
import 'package:booking_app/presentation/pages/discover/favorite/favorite_view.dart';
import 'package:booking_app/presentation/pages/discover/settings/settings_view.dart';
import 'package:booking_app/presentation/pages/discover/trips/trips_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'discover_state.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DiscoverCubit(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            backgroundColor: AppColor.ink05,
            body: Column(
              children: [
                BlocBuilder<DiscoverCubit, DiscoverState>(
                  builder: (context, state) {
                    return Expanded(
                      child: state.selectedIndex == 0
                          ? const TripsPage()
                          : state.selectedIndex == 1
                              ? const FavoritePage()
                              : const SettingsPage(),
                    );
                  },
                ),
                const DiscoverBottomMenu(),
              ],
            ),
          );
        },
      ),
    );
  }
}
