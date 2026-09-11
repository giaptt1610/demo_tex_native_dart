import 'dart:convert';
import 'package:http/http.dart' as http;

class WebHttpClient {
  final http.Client _client;
  final String token;

  WebHttpClient(
    this._client, {
    required this.token,
  });

  Map<String, String> get _headers => {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer $token',
  };

  Future<http.Response> get({
    required Uri uri,
  }) async {
    final response = await _client.get(
      uri,
      headers: _headers,
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to get data: ${response.statusCode}');
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
      throw Exception('Failed to post data: ${response.statusCode}');
    }
    return response;
  }
}
