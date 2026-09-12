// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlanModel _$PlanModelFromJson(Map<String, dynamic> json) => _PlanModel(
  questionId: (json['questionId'] as num?)?.toInt(),
  planId: (json['planId'] as num?)?.toInt(),
  planName: json['planName'] as String?,
  content: json['content'] as String?,
  key: json['key'] as String?,
  isCorrect: json['isCorrect'] as bool?,
  order: (json['order'] as num?)?.toInt(),
  planOrder: (json['planOrder'] as num?)?.toInt(),
  userKey: json['userKey'] as String?,
  optionTextLatex: json['optionTextLatex'] as String?,
  optionCode: json['optionCode'] as String?,
  optionText: json['optionText'] as String?,
);

Map<String, dynamic> _$PlanModelToJson(_PlanModel instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'planId': instance.planId,
      'planName': instance.planName,
      'content': instance.content,
      'key': instance.key,
      'isCorrect': instance.isCorrect,
      'order': instance.order,
      'planOrder': instance.planOrder,
      'userKey': instance.userKey,
      'optionTextLatex': instance.optionTextLatex,
      'optionCode': instance.optionCode,
      'optionText': instance.optionText,
    };
