import 'package:dio/dio.dart';
import 'config.dart';
import 'http_method.dart';
import 'http_service.dart';

/// Dio-based implementation of [HttpService].
class ApiClient implements HttpService {

  /// Creates a new client with the given [config].
  ApiClient({required ApiConfig config})
      : _dio = Dio(
    BaseOptions(
      baseUrl: config.baseUrl,
      headers: {
        'Content-Type': 'application/json',
      },
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    ),
  ) {
    _setupInterceptors(config.apiKey);
  }

  final Dio _dio;


  /// Registers interceptors for logging and error handling.
  void _setupInterceptors(String apiKey) {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          // You can modify headers here if needed.
          options.queryParameters['key'] = apiKey;
          return handler.next(options);
        },
        onResponse: (response, handler) {
          // Handle or log responses globally.
          return handler.next(response);
        },
        onError: (DioException error, handler) {
          // Handle errors globally.
          return handler.next(error);
        },
      ),
    );
  }

  @override
  Future<Response<T>> request<T>(
      String path, {
        HttpMethod method = HttpMethod.get,
        Map<String, dynamic>? queryParameters,
        dynamic data,
        Map<String, dynamic>? headers,
      }) {
    final options = Options(
      method: method.name,
      headers: headers,
    );
    return _dio.request<T>(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
    );
  }

  /// Convenience wrapper for GET requests.
  @override
  Future<Response<T>> get<T>(
      String path, {
        Map<String, dynamic>? queryParameters,
      }) {
    return request<T>(
      path,
      method: HttpMethod.get,
      queryParameters: queryParameters,
    );
  }

  /// Convenience wrapper for POST requests.
  @override
  Future<Response<T>> post<T>(
      String path, {
        dynamic data,
      }) {
    return request<T>(
      path,
      method: HttpMethod.patch,
      data: data,
    );
  }

  /// Convenience wrapper for PUT requests.
  @override
  Future<Response<T>> put<T>(
      String path, {
        dynamic data,
      }) {
    return request<T>(
      path,
      method: HttpMethod.put,
      data: data,
    );
  }

  /// Convenience wrapper for DELETE requests.
  @override
  Future<Response<T>> delete<T>(
      String path,
      ) {
    return request<T>(
      path,
      method: HttpMethod.delete,
    );
  }

  /// Convenience wrapper for PATCH requests.
  @override
  Future<Response<T>> patch<T>(
      String path, {
        dynamic data,
      }) {
    return request<T>(
      path,
      method: HttpMethod.patch,
      data: data,
    );
  }
}