import 'package:demo_tex_native/markdown_to_html.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plan_model.freezed.dart';
part 'plan_model.g.dart';

@freezed
abstract class PlanModel with _$PlanModel {
  const factory PlanModel({
    int? questionId,
    int? planId,
    String? planName,
    String? content,
    String? key,
    bool? isCorrect,
    int? order,
    // String? userAnswer,
    int? planOrder,
    String? userKey,
    String? optionTextLatex,
    String? optionCode,
    String? optionText,
  }) = _PlanModel;

  factory PlanModel.fromJson(Map<String, dynamic> json) => _$PlanModelFromJson(json);
}

extension PlanModelExt on PlanModel {
  String get optionTextLatexUi => convertMarkdownToHtmlLatex(optionTextLatex ?? '');
}
