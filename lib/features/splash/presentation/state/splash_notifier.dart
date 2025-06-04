import 'package:architecture_template/features/splash/domain/splash_use_cases.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'splash_state.dart';

/// Provider for managing the state of the splash page
final splashPageNotifierProvider = NotifierProvider<SplashPageNotifier, SplashState>(
  SplashPageNotifier.new,
);

/// Notifier that handles the initialization logic and state updates for the splash screen
class SplashPageNotifier extends Notifier<SplashState> {
  late final SplashUseCases _useCases;

  @override
  SplashState build() {
    // Lazily instantiate use cases to avoid unnecessary initialization
    _useCases = SplashUseCases();
    onInit();
    return const SplashInitialState();
  }

  /// Called when the splash screen is first shown.
  /// Attempts to initialize the app and updates the state based on the result.
  Future<void> onInit() async {
    try {
      await _useCases.init();
      state = const SplashSuccessState();
    } catch (ex) {
      state = SplashFailureState(message: ex.toString());
    }
  }
}
