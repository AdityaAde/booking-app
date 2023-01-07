import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'discover.dart';
import 'discover_cubit.dart';
import 'discover_state.dart';

import 'component/component.dart';
import '../../../config/config.dart';

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
