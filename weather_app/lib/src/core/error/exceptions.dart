class ServerException implements Exception {
  final String message;
  const ServerException([this.message = 'A server error occurred']);
  @override
  String toString() => 'ServerException: $message';
}

class ParsingException implements Exception {
  final String message;
  const ParsingException([this.message = 'Failed to parse data']);
  @override
  String toString() => 'ParsingException: $message';
}

class ApiException implements Exception {
  final String message;
  final int? statusCode;
  const ApiException(this.message, {this.statusCode});
  @override
  String toString() =>
      'ApiException: $message${statusCode != null ? ' (Status: $statusCode)' : ''}';
}

