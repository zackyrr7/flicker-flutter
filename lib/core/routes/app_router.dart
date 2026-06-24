import 'package:flicker/core/features/login/presentation/login_screen.dart';
import 'package:flicker/features/home/presentation/dashboard_screen.dart';
import 'package:flicker/features/main_wrapper/presentation/main_screen.dart';
import 'package:flutter/material.dart';
import 'app_routes.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: AppRoutes.login,
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: AppRoutes.login,
      builder: (context, state) {
        return const LoginScreen();
      },
    ),

    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return MainScreen(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.dashboard,
              builder: (context, state) => const DashboardScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.dashboard,
              builder: (context, state) => const DashboardScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.dashboard,
              builder: (context, state) => const DashboardScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);
