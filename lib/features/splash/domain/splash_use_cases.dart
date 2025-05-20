import 'package:architecture_template/core/routing/app_state_notifiers.dart';

class SplashUseCases {
  const SplashUseCases();

  Future<void> init() async {
    await Future.delayed(Duration(seconds: 7));
    isAppInitialized.value = true;
  }
}