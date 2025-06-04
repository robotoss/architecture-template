import 'config.dart';
import 'api_client.dart';
import 'http_service.dart';

/// Main entry point for the API adapter package.
///
/// Usage:
/// ```dart
/// final adapter = ApiAdapter(
///   baseUrl: 'https://api.example.com',
///   apiKey: 'YOUR_API_KEY',
/// );
/// final http = adapter.httpService;
/// ```
class ApiAdapter {
  /// Underlying HTTP service.
  final HttpService httpService;

  /// Initializes the adapter with [baseUrl] and [apiKey].
  ApiAdapter({required String baseUrl, required String apiKey})
      : httpService = ApiClient(
    config: ApiConfig(baseUrl: baseUrl, apiKey: apiKey),
  );
}