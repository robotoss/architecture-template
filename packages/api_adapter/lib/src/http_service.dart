import 'package:dio/dio.dart';
import 'http_method.dart';

/// Abstracts HTTP operations behind a simple interface.
abstract class HttpService {
  /// Sends a request to [path] using [method].
  Future<Response<T>> request<T>(
      String path, {
        HttpMethod method = HttpMethod.get,
        Map<String, dynamic>? queryParameters,
        dynamic data,
        Map<String, dynamic>? headers,
      });

  /// Convenience wrappers:
  Future<Response<T>> get<T>(String path, {Map<String, dynamic>? queryParameters}) =>
      request<T>(path, method: HttpMethod.get, queryParameters: queryParameters);

  Future<Response<T>> post<T>(String path, {dynamic data}) =>
      request<T>(path, method: HttpMethod.post, data: data);

  Future<Response<T>> put<T>(String path, {dynamic data}) =>
      request<T>(path, method: HttpMethod.put, data: data);

  Future<Response<T>> delete<T>(String path) =>
      request<T>(path, method: HttpMethod.delete);

  Future<Response<T>> patch<T>(String path, {dynamic data}) =>
      request<T>(path, method: HttpMethod.patch, data: data);
}