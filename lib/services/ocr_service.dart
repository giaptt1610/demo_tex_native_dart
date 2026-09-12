import 'package:demo_tex_native/core/helpers/helpers.dart';
import 'package:demo_tex_native/core/tokens.dart';
import 'package:demo_tex_native/core/http/web_http_client.dart';
import 'package:demo_tex_native/core/http/response_parser.dart';

import '../models/source_preview_result.dart';

class OCRService {
  final WebHttpClient _client;
  final String baseUrl;

  OCRService(this._client, this.baseUrl);

  Future<SourcePreviewResult> fetchSourcePreviewV2({
    required int sourceId,
    bool aladanh = false,
  }) async {
    final response = await _client.post(
      uri: Uri.parse(
        '${removeTrailingSlash(baseUrl)}/api/v1/autopost/previews/sources/$sourceId',
      ),
      body: {
        'token': aladanh ? aladanhToken : pToken,
      },
    );
    return parseResponse<SourcePreviewResult>(
      response,
      (json) => SourcePreviewResult.fromJson(json),
    );
  }
}
