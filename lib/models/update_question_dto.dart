import '../../models/plan_model.dart';

class UpdateQuestionDto {
  final String questionText;
  final List<PlanModel> plans;
  final String answerKey;

  UpdateQuestionDto({
    required this.questionText,
    required this.plans,
    required this.answerKey,
  });

  UpdateQuestionDto copyWith({
    String? questionText,
    List<PlanModel>? plans,
    String? answerKey,
  }) {
    return UpdateQuestionDto(
      questionText: questionText ?? this.questionText,
      plans: plans ?? this.plans,
      answerKey: answerKey ?? this.answerKey,
    );
  }

  @override
  String toString() {
    return 'UpdateQuestionDto(questionText: $questionText, plans: $plans, answerKey: $answerKey)';
  }
}
