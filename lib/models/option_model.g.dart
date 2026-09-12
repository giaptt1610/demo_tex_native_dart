// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'option_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OptionModel _$OptionModelFromJson(Map<String, dynamic> json) => _OptionModel(
  questionId: (json['questionId'] as num?)?.toInt(),
  optionId: (json['optionId'] as num?)?.toInt(),
  optionCode: json['optionCode'] as String?,
  optionSlotCode: json['optionSlotCode'] as String?,
  optionText: json['optionText'] as String?,
  optionTextLatex: json['optionTextLatex'] as String?,
  isCorrect: json['isCorrect'] as bool?,
  optionOrder: (json['optionOrder'] as num?)?.toInt(),
);

Map<String, dynamic> _$OptionModelToJson(_OptionModel instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'optionId': instance.optionId,
      'optionCode': instance.optionCode,
      'optionSlotCode': instance.optionSlotCode,
      'optionText': instance.optionText,
      'optionTextLatex': instance.optionTextLatex,
      'isCorrect': instance.isCorrect,
      'optionOrder': instance.optionOrder,
    };
