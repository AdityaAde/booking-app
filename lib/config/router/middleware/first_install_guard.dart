import 'package:auto_route/auto_route.dart';

import '../../../utils/helper/pref_helper.dart';
import '../app_router.dart';

class FirstInstallGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    bool isFirstInstall = PrefHelper.instance.isFirstInstall;
    if (isFirstInstall) {
      router.replace(const OnboardingRoute());
    } else {
      router.replace(const WelcomeRoute());
    }
  }
}
