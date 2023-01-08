import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:logging/logging.dart';

import 'config/router/app_router.dart';
import 'config/router/middleware/middleware.dart';
import 'utils/helper/pref_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PrefHelper.instance.init();
  GetIt.I.registerSingleton<AppRouter>(
    AppRouter(
      firstInstallGuard: FirstInstallGuard(),
      authGuard: AuthGuard(),
    ),
  );

  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    debugPrint('clog ${record.message} ');
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = GetIt.I<AppRouter>();
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          title: 'Booking App',
          theme: ThemeData(
            fontFamily: 'Poppins',
            primarySwatch: Colors.blue,
          ),
          routerDelegate: router.delegate(),
          routeInformationParser: router.defaultRouteParser(),
        );
      },
    );
  }
}
