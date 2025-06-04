/// Holds the base URL and API key for requests.
class ApiConfig {
  /// Base domain or URL for all API requests.
  final String baseUrl;

  /// API key sent in the Authorization header.
  final String apiKey;

  /// Creates a new configuration instance.
  const ApiConfig({
    required this.baseUrl,
    required this.apiKey,
  });
}