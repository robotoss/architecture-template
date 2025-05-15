import 'package:architecture_template/features/home_feature/presentation/ui/app_home_page.dart';
import 'package:architecture_template/features/splash_feature/presentation/ui/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final appRoutingProvider = Provider((ref) => AppRouting());

class AppRouting {
  final _shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell');

  // GoRouter configuration
  late final config = GoRouter(
    initialLocation: '/a',
    routes: [
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (BuildContext context, GoRouterState state, Widget child) {
          return AppHomePage(child: child);
        },
        routes: <RouteBase>[
          /// The first screen to display in the bottom navigation bar.
          GoRoute(
            path: '/a',
            builder: (BuildContext context, GoRouterState state) {
              return Scaffold(
                appBar: AppBar(title: const Text('A'),),
              );
            },
          ),

          /// Displayed when the second item in the the bottom navigation bar is
          /// selected.
          GoRoute(
            path: '/b',
            builder: (BuildContext context, GoRouterState state) {
              return  Scaffold(
                appBar: AppBar(title: const Text('B'),),
              );
            },
          ),

          /// The third screen to display in the bottom navigation bar.
          GoRoute(
            path: '/c',
            builder: (BuildContext context, GoRouterState state) {
              return Scaffold(
                appBar: AppBar(title: const Text('C'),),
              );
            },
          ),
        ],
      ),
      GoRoute(
        path: '/splash_page',
        builder: (context, state) => const SplashPage(),
      ),
    ],
  );
}
