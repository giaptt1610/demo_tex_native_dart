import 'package:demo_tex_native/markdown_to_html.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// import 'llm_dedup_model.dart';
// import 'llm_issue_model.dart';
import 'option_model.dart';
import 'plan_model.dart';

part 'question_model_v2.freezed.dart';
part 'question_model_v2.g.dart';

@freezed
abstract class QuestionModelV2 with _$QuestionModelV2 {
  const factory QuestionModelV2({
    @Default(0) int questionId,
    int? sourceId,
    int? readingId,
    @Default(0) int order,
    @Default('') String questionText,
    @Default('') String questionTextLatex,
    @Default('') String solutionText,
    @Default('') String solutionTextLatex,
    @Default('') String readingTitle,
    @Default('') String readingText,
    @Default('') String readingTextVn,
    String? llmSolutionText,
    String? llmSolutionTextLatex,
    double? llmSolutionConfidenceScore,
    String? readingTextLatex,
    String? imageDescription,
    String? answerKey,
    String? correctAnswer,
    String? answerDataFormatCode,
    String? originalLanguageCode,
    int? classId,
    String? className,
    int? subjectId,
    String? subjectName,
    int? chapterId,
    String? chapterName,
    int? topicId,
    String? topicName,
    int? objectiveId,
    String? objectiveName,
    int? insightId,
    String? insightName,
    int? abilityId,
    String? abilityName,
    int? abilityTwoId,
    String? abilityTwoName,
    int? cognitiveId,
    String? cognitiveName,
    int? cognitiveTwoId,
    String? cognitiveTwoName,
    int? knowledgeId,
    String? knowledgeName,
    int? knowledgeTwoId,
    String? knowledgeTwoName,
    int? difficultyId,
    String? difficultyName,
    int? difficultyTwoId,
    String? difficultyTwoName,
    int? levelId,
    String? levelName,
    int? questionTypeId,
    bool? hasError,
    String? reviewStatus,
    DateTime? reviewUpdatedAt,
    String? reviewUpdatedBy,
    DateTime? llmSyncedAt,
    DateTime? importSyncedAt,
    String? issueTypeCode,
    String? issueSeverityCode,
    String? issueText,
    String? suggestedFixText,
    DateTime? issueUpdatedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    // @Default([]) List<PlanModel> plans,
    double? classConfidenceScore,
    double? subjectConfidenceScore,
    double? chapterConfidenceScore,
    double? topicConfidenceScore,
    double? objectiveConfidenceScore,
    double? insightConfidenceScore,
    double? abilityConfidenceScore,
    double? cognitiveConfidenceScore,
    double? knowledgeConfidenceScore,
    double? difficultyConfidenceScore,
    // LlmIssueModel? issue,
    // LlmDedupModel? dedup,
    @Default(false) bool isImported,
    @Default(false) bool isDelete,
    @Default([]) List<OptionModel> options,
  }) = _QuestionModelV2;

  factory QuestionModelV2.fromJson(Map<String, dynamic> json) => _$QuestionModelV2FromJson(json);
}

extension QuestionModelV2Ext on QuestionModelV2 {
  List<PlanModel> get plans => options.map((option) => option.toPlanModel()).toList();

  String get questionTextLatexUi => convertMarkdownToHtmlLatex(questionTextLatex);
  String get solutionTextLatexUi => convertMarkdownToHtmlLatex(solutionTextLatex);
}
