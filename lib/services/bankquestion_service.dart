import 'package:demo_tex_native/core/helpers/helpers.dart';
import 'package:demo_tex_native/core/http/web_http_client.dart';
import 'package:demo_tex_native/core/http/response_parser.dart';

import '../models/llm_question_detail_model.dart';

class BankQuestionService {
  final WebHttpClient _client;
  final String baseUrl;

  BankQuestionService(this._client, this.baseUrl);

  Future<LlmQuestionDetailModel> getQuestionDetailV2({
    required int questionId,
    bool aladanh = false,
  }) async {
    final workspace = aladanh ? 'aladanh' : 'p';

    final response = await _client.get(
      uri: Uri.parse(
        '${removeTrailingSlash(baseUrl)}/api/workspaces/$workspace/bank-question-detail/questions/$questionId/detail',
      ),
    );
    return parseResponse<LlmQuestionDetailModel>(
      response,
      (json) => LlmQuestionDetailModel.fromJson(json),
    );
  }
}
