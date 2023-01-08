import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';

import '../../../config/router/app_router.dart';

part 'welcome_state.dart';

class WelcomeCubit extends Cubit<WelcomeState> {
  WelcomeCubit() : super(WelcomeInitial());

  AppRouter get _appRouter => GetIt.I<AppRouter>();

  void handleBtnExplore() {
    _appRouter.replace(const DiscoverRoute());
  }

  void handleBtnLogin() {
    _appRouter.push(const LoginRoute());
  }
}
