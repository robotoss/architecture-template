import 'package:architecture_template/features/splash/presentation/state/splash_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends ConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(splashPageNotifierProvider, (prev, current) {
      if (current is SplashSuccessState) {
        context.go('/games');
      } else if (current is SplashFailureState) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(current.message)));
      }
    });

    return Scaffold(
      appBar: AppBar(title: const Text('SplashPage')),
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
