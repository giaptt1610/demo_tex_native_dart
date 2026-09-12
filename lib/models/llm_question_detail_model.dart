import 'package:freezed_annotation/freezed_annotation.dart';

import 'question_model_v2.dart';

part 'llm_question_detail_model.freezed.dart';
part 'llm_question_detail_model.g.dart';

@freezed
abstract class LlmQuestionDetailModel with _$LlmQuestionDetailModel {
  const factory LlmQuestionDetailModel({
    QuestionModelV2? question,
  }) = _LlmQuestionDetailModel;

  factory LlmQuestionDetailModel.fromJson(Map<String, dynamic> json) => _$LlmQuestionDetailModelFromJson(json);
}
