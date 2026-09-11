import 'dart:convert';
import 'package:http/http.dart' as http;

class WebHttpClient {
  final http.Client _client;
  String token;

  WebHttpClient(
    this._client, {
    required this.token,
  });

  void setToken(String newToken) {
    token = newToken;
    _headers.addAll({'Authorization': 'Bearer $token'});
  }

  void setHeaders(Map<String, String> headers) {
    _headers.addAll(headers);
  }

  final Map<String, String> _headers = {
    'Content-Type': 'application/json',
  };

  Future<http.Response> get({
    required Uri uri,
  }) async {
    final response = await _client.get(
      uri,
      headers: _headers,
    );

    if (response.statusCode != 200) {
      throw ApiException(
        'Failed to get data: ${response.statusCode}',
        data: jsonDecode(response.body),
      );
    }
    return response;
  }

  Future<http.Response> post({
    required Uri uri,
    required Map<String, dynamic> body,
  }) async {
    final response = await _client.post(
      uri,
      headers: _headers,
      body: jsonEncode(body),
    );

    if (response.statusCode != 200) {
      throw ApiException(
        'Failed to post data: ${response.statusCode}',
        data: jsonDecode(response.body),
      );
    }
    return response;
  }
}

class ApiException implements Exception {
  final String message;
  final Map<String, dynamic> data;

  ApiException(this.message, {this.data = const {}});

  @override
  String toString() => 'ApiException: $message';
}
