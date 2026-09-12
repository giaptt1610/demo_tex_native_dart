import 'package:freezed_annotation/freezed_annotation.dart';
import 'plan_model.dart';

part 'option_model.freezed.dart';
part 'option_model.g.dart';

@freezed
abstract class OptionModel with _$OptionModel {
  const factory OptionModel({
    int? questionId,
    int? optionId,
    String? optionCode,
    String? optionSlotCode,
    String? optionText,
    String? optionTextLatex,
    bool? isCorrect,
    int? optionOrder,
  }) = _OptionModel;

  factory OptionModel.fromJson(Map<String, dynamic> json) => _$OptionModelFromJson(json);
}

extension OptionExt on OptionModel {
  PlanModel toPlanModel() {
    return PlanModel(
      questionId: questionId,
      planId: optionId,
      planName: optionCode,
      content: optionText,
      key: optionSlotCode,
      isCorrect: isCorrect,
      order: optionOrder,
      optionTextLatex: optionTextLatex,
    );
  }
}
