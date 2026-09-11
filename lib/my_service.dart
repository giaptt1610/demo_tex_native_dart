import 'package:demo_tex_native/todo_model.dart';
import 'package:demo_tex_native/web_http_client.dart';
import 'package:demo_tex_native/response_parser.dart';

String removeTrailingSlash(String url) {
  return url.replaceFirst(RegExp(r'\/+$'), '');
}

class MyService {
  final WebHttpClient _client;
  final String baseUrl;

  MyService(this._client, this.baseUrl);

  Future<List<TodoModel>> getTodos() async {
    final response = await _client.get(
      uri: Uri.parse('${removeTrailingSlash(baseUrl)}/todos'),
    );
    return parseListResponse<TodoModel>(
      response,
      (json) => TodoModel.fromJson(json),
    );
  }
}
