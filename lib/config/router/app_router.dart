import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../presentation/pages/discover/discover.dart';
import '../../presentation/pages/pages.dart';
import '../../presentation/pages/welcome/login/login_view.dart';
import 'middleware/middleware.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: OnboardingPage,
      path: '/onboarding',
      initial: true,
      guards: [FirstInstallGuard],
    ),
    AutoRoute(
      page: WelcomePage,
      path: '/welcome',
      guards: [AuthGuard],
    ),
    AutoRoute(page: LoginPage, path: '/login'),
    AutoRoute(page: DiscoverPage, path: '/discover'),
    AutoRoute(page: TripsPage, path: '/trips'),
    AutoRoute(page: SettingsPage, path: '/settings'),
    AutoRoute(page: FavoritePage, path: '/favorite'),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {
  AppRouter({
    required super.firstInstallGuard,
    required super.authGuard,
  });
}
