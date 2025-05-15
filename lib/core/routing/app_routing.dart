
import 'package:architecture_template/features/home_feature/presentation/ui/home_page.dart';
import 'package:architecture_template/features/splash_feature/presentation/ui/splash_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final appRoutingProvider = Provider((ref)=> AppRouting());

class AppRouting {
  // GoRouter configuration
  final config = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/splash_page',
        builder: (context, state) => const SplashPage(),
      ),
    ],
  );
}