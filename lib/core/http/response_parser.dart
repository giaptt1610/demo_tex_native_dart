import 'dart:convert';
import 'package:http/http.dart' as http;

T parseResponse<T>(
  http.Response response,
  T Function(Map<String, dynamic> json) fromJson,
) {
  final dynamic json = jsonDecode(response.body);

  if (json is! Map<String, dynamic>) {
    throw FormatException(
      'Expected an object, but got ${json.runtimeType}',
    );
  }

  return fromJson(json);
}

List<T> parseListResponse<T>(
  http.Response response,
  T Function(Map<String, dynamic> json) fromJson,
) {
  final dynamic json = jsonDecode(response.body);

  if (json is! List) {
    throw FormatException(
      'Expected a list, but got ${json.runtimeType}',
    );
  }

  return json.map((item) {
    if (item is! Map<String, dynamic>) {
      throw FormatException(
        'Expected an object inside list, but got ${item.runtimeType}',
      );
    }

    return fromJson(item);
  }).toList();
}
