import 'package:demo_tex_native/todo_model.dart';
import 'package:demo_tex_native/web_http_client.dart';
import 'package:demo_tex_native/response_parser.dart';

String removeTrailingSlash(String url) {
  return url.replaceFirst(RegExp(r'\/+$'), '');
}

class OCRService {
  final WebHttpClient _client;
  final String baseUrl;

  OCRService(this._client, this.baseUrl);

  Future<List<TodoModel>> fetchSourcePreviewV2({required int sourceId}) async {
    final response = await _client.post(
      uri: Uri.parse(
        '${removeTrailingSlash(baseUrl)}/api/v1/autopost/previews/sources/$sourceId',
      ),
      body: {
        'token': '',
      },
    );
    return parseListResponse<TodoModel>(
      response,
      (json) => TodoModel.fromJson(json),
    );
  }
}
