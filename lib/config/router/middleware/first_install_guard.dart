import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../utils/helper/pref_helper.dart';
import '../app_router.dart';

class FirstInstallGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    bool isFirstInstall = PrefHelper.instance.isFirstInstall;
    if (isFirstInstall) {
      debugPrint('clog ini isFirst $isFirstInstall');
      resolver.next();
    } else {
      debugPrint('clog ini isFirst $isFirstInstall');
      router.replace(const WelcomeRoute());
    }
  }
}
