part of 'splash_notifier.dart';

/// Base class for all splash screen states
@immutable
sealed class SplashState {
  const SplashState();
}

/// Initial state — the app has just launched, and initialization has not started yet
@immutable
class SplashInitialState extends SplashState {
  const SplashInitialState();
}

/// Success state — the app has successfully completed initialization
@immutable
class SplashSuccessState extends SplashState {
  const SplashSuccessState();
}

/// Failure state — an error occurred during app initialization
@immutable
class SplashFailureState extends SplashState {
  const SplashFailureState({required this.message});

  /// Error message that can be shown to the user
  final String message;
}
