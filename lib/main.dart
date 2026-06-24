import 'package:flicker/core/routes/app_router.dart';
import 'package:flicker/features/login/presentation/login_screen.dart';
import 'package:flicker/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      title: 'FLICKER',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      routerDelegate: appRouter.routerDelegate,
      routeInformationParser: appRouter.routeInformationParser,
      routeInformationProvider: appRouter.routeInformationProvider,

      // home: const LoginScreen(),
    );
  }
}
