/// Supported HTTP methods for requests.
enum HttpMethod {
  get,
  post,
  put,
  delete,
  patch
}

extension HttpMethodExtension on HttpMethod {
  /// Converts enum to its string equivalent.
  String get name {
    switch (this) {
      case HttpMethod.get:
        return 'GET';
      case HttpMethod.post:
        return 'POST';
      case HttpMethod.put:
        return 'PUT';
      case HttpMethod.delete:
        return 'DELETE';
      case HttpMethod.patch:
        return 'PATCH';
    }
  }
}