// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'llm_question_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LlmQuestionDetailModel _$LlmQuestionDetailModelFromJson(
  Map<String, dynamic> json,
) => _LlmQuestionDetailModel(
  question: json['question'] == null
      ? null
      : QuestionModelV2.fromJson(json['question'] as Map<String, dynamic>),
);

Map<String, dynamic> _$LlmQuestionDetailModelToJson(
  _LlmQuestionDetailModel instance,
) => <String, dynamic>{'question': instance.question};
