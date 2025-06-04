import 'package:api_adapter/api_adapter.dart';
import 'package:architecture_template/core/routing/app_routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';

void main() {
  /// Init main DI
  final getIt = GetIt.I;
  getIt.registerSingleton<ApiAdapter>(
    ApiAdapter(
      baseUrl: 'https://api.rawg.io/api/',
      apiKey: '', // TODO(admin): Insert your key
    ),
  );

  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: ref.watch(appRoutingProvider).config,
      title: 'Architecture Template',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
    );
  }
}