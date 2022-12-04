import 'package:booking_app/config/theme/app_color.dart';
import 'package:booking_app/presentation/pages/discover/component/bottom_menu.dart';
import 'package:booking_app/presentation/pages/discover/discover_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DiscoverCubit(),
      child: Builder(builder: (context) {
        return Scaffold(
          backgroundColor: AppColor.ink05,
          body: Column(
            children: const [
              Expanded(child: SizedBox()),
              DiscoverBottomMenu(),
            ],
          ),
        );
      }),
    );
  }
}
