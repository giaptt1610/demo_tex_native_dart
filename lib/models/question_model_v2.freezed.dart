// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_model_v2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QuestionModelV2 {

 int get questionId; int? get sourceId; int? get readingId; int get order; String get questionText; String get questionTextLatex; String get solutionText; String get solutionTextLatex; String get readingTitle; String get readingText; String get readingTextVn; String? get llmSolutionText; String? get llmSolutionTextLatex; double? get llmSolutionConfidenceScore; String? get readingTextLatex; String? get imageDescription; String? get answerKey; String? get correctAnswer; String? get answerDataFormatCode; String? get originalLanguageCode; int? get classId; String? get className; int? get subjectId; String? get subjectName; int? get chapterId; String? get chapterName; int? get topicId; String? get topicName; int? get objectiveId; String? get objectiveName; int? get insightId; String? get insightName; int? get abilityId; String? get abilityName; int? get abilityTwoId; String? get abilityTwoName; int? get cognitiveId; String? get cognitiveName; int? get cognitiveTwoId; String? get cognitiveTwoName; int? get knowledgeId; String? get knowledgeName; int? get knowledgeTwoId; String? get knowledgeTwoName; int? get difficultyId; String? get difficultyName; int? get difficultyTwoId; String? get difficultyTwoName; int? get levelId; String? get levelName; int? get questionTypeId; bool? get hasError; String? get reviewStatus; DateTime? get reviewUpdatedAt; String? get reviewUpdatedBy; DateTime? get llmSyncedAt; DateTime? get importSyncedAt; String? get issueTypeCode; String? get issueSeverityCode; String? get issueText; String? get suggestedFixText; DateTime? get issueUpdatedAt; DateTime? get createdAt; DateTime? get updatedAt;// @Default([]) List<PlanModel> plans,
 double? get classConfidenceScore; double? get subjectConfidenceScore; double? get chapterConfidenceScore; double? get topicConfidenceScore; double? get objectiveConfidenceScore; double? get insightConfidenceScore; double? get abilityConfidenceScore; double? get cognitiveConfidenceScore; double? get knowledgeConfidenceScore; double? get difficultyConfidenceScore;// LlmIssueModel? issue,
// LlmDedupModel? dedup,
 bool get isImported; bool get isDelete; List<OptionModel> get options;
/// Create a copy of QuestionModelV2
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionModelV2CopyWith<QuestionModelV2> get copyWith => _$QuestionModelV2CopyWithImpl<QuestionModelV2>(this as QuestionModelV2, _$identity);

  /// Serializes this QuestionModelV2 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionModelV2&&(identical(other.questionId, questionId) || other.questionId == questionId)&&(identical(other.sourceId, sourceId) || other.sourceId == sourceId)&&(identical(other.readingId, readingId) || other.readingId == readingId)&&(identical(other.order, order) || other.order == order)&&(identical(other.questionText, questionText) || other.questionText == questionText)&&(identical(other.questionTextLatex, questionTextLatex) || other.questionTextLatex == questionTextLatex)&&(identical(other.solutionText, solutionText) || other.solutionText == solutionText)&&(identical(other.solutionTextLatex, solutionTextLatex) || other.solutionTextLatex == solutionTextLatex)&&(identical(other.readingTitle, readingTitle) || other.readingTitle == readingTitle)&&(identical(other.readingText, readingText) || other.readingText == readingText)&&(identical(other.readingTextVn, readingTextVn) || other.readingTextVn == readingTextVn)&&(identical(other.llmSolutionText, llmSolutionText) || other.llmSolutionText == llmSolutionText)&&(identical(other.llmSolutionTextLatex, llmSolutionTextLatex) || other.llmSolutionTextLatex == llmSolutionTextLatex)&&(identical(other.llmSolutionConfidenceScore, llmSolutionConfidenceScore) || other.llmSolutionConfidenceScore == llmSolutionConfidenceScore)&&(identical(other.readingTextLatex, readingTextLatex) || other.readingTextLatex == readingTextLatex)&&(identical(other.imageDescription, imageDescription) || other.imageDescription == imageDescription)&&(identical(other.answerKey, answerKey) || other.answerKey == answerKey)&&(identical(other.correctAnswer, correctAnswer) || other.correctAnswer == correctAnswer)&&(identical(other.answerDataFormatCode, answerDataFormatCode) || other.answerDataFormatCode == answerDataFormatCode)&&(identical(other.originalLanguageCode, originalLanguageCode) || other.originalLanguageCode == originalLanguageCode)&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.className, className) || other.className == className)&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId)&&(identical(other.subjectName, subjectName) || other.subjectName == subjectName)&&(identical(other.chapterId, chapterId) || other.chapterId == chapterId)&&(identical(other.chapterName, chapterName) || other.chapterName == chapterName)&&(identical(other.topicId, topicId) || other.topicId == topicId)&&(identical(other.topicName, topicName) || other.topicName == topicName)&&(identical(other.objectiveId, objectiveId) || other.objectiveId == objectiveId)&&(identical(other.objectiveName, objectiveName) || other.objectiveName == objectiveName)&&(identical(other.insightId, insightId) || other.insightId == insightId)&&(identical(other.insightName, insightName) || other.insightName == insightName)&&(identical(other.abilityId, abilityId) || other.abilityId == abilityId)&&(identical(other.abilityName, abilityName) || other.abilityName == abilityName)&&(identical(other.abilityTwoId, abilityTwoId) || other.abilityTwoId == abilityTwoId)&&(identical(other.abilityTwoName, abilityTwoName) || other.abilityTwoName == abilityTwoName)&&(identical(other.cognitiveId, cognitiveId) || other.cognitiveId == cognitiveId)&&(identical(other.cognitiveName, cognitiveName) || other.cognitiveName == cognitiveName)&&(identical(other.cognitiveTwoId, cognitiveTwoId) || other.cognitiveTwoId == cognitiveTwoId)&&(identical(other.cognitiveTwoName, cognitiveTwoName) || other.cognitiveTwoName == cognitiveTwoName)&&(identical(other.knowledgeId, knowledgeId) || other.knowledgeId == knowledgeId)&&(identical(other.knowledgeName, knowledgeName) || other.knowledgeName == knowledgeName)&&(identical(other.knowledgeTwoId, knowledgeTwoId) || other.knowledgeTwoId == knowledgeTwoId)&&(identical(other.knowledgeTwoName, knowledgeTwoName) || other.knowledgeTwoName == knowledgeTwoName)&&(identical(other.difficultyId, difficultyId) || other.difficultyId == difficultyId)&&(identical(other.difficultyName, difficultyName) || other.difficultyName == difficultyName)&&(identical(other.difficultyTwoId, difficultyTwoId) || other.difficultyTwoId == difficultyTwoId)&&(identical(other.difficultyTwoName, difficultyTwoName) || other.difficultyTwoName == difficultyTwoName)&&(identical(other.levelId, levelId) || other.levelId == levelId)&&(identical(other.levelName, levelName) || other.levelName == levelName)&&(identical(other.questionTypeId, questionTypeId) || other.questionTypeId == questionTypeId)&&(identical(other.hasError, hasError) || other.hasError == hasError)&&(identical(other.reviewStatus, reviewStatus) || other.reviewStatus == reviewStatus)&&(identical(other.reviewUpdatedAt, reviewUpdatedAt) || other.reviewUpdatedAt == reviewUpdatedAt)&&(identical(other.reviewUpdatedBy, reviewUpdatedBy) || other.reviewUpdatedBy == reviewUpdatedBy)&&(identical(other.llmSyncedAt, llmSyncedAt) || other.llmSyncedAt == llmSyncedAt)&&(identical(other.importSyncedAt, importSyncedAt) || other.importSyncedAt == importSyncedAt)&&(identical(other.issueTypeCode, issueTypeCode) || other.issueTypeCode == issueTypeCode)&&(identical(other.issueSeverityCode, issueSeverityCode) || other.issueSeverityCode == issueSeverityCode)&&(identical(other.issueText, issueText) || other.issueText == issueText)&&(identical(other.suggestedFixText, suggestedFixText) || other.suggestedFixText == suggestedFixText)&&(identical(other.issueUpdatedAt, issueUpdatedAt) || other.issueUpdatedAt == issueUpdatedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.classConfidenceScore, classConfidenceScore) || other.classConfidenceScore == classConfidenceScore)&&(identical(other.subjectConfidenceScore, subjectConfidenceScore) || other.subjectConfidenceScore == subjectConfidenceScore)&&(identical(other.chapterConfidenceScore, chapterConfidenceScore) || other.chapterConfidenceScore == chapterConfidenceScore)&&(identical(other.topicConfidenceScore, topicConfidenceScore) || other.topicConfidenceScore == topicConfidenceScore)&&(identical(other.objectiveConfidenceScore, objectiveConfidenceScore) || other.objectiveConfidenceScore == objectiveConfidenceScore)&&(identical(other.insightConfidenceScore, insightConfidenceScore) || other.insightConfidenceScore == insightConfidenceScore)&&(identical(other.abilityConfidenceScore, abilityConfidenceScore) || other.abilityConfidenceScore == abilityConfidenceScore)&&(identical(other.cognitiveConfidenceScore, cognitiveConfidenceScore) || other.cognitiveConfidenceScore == cognitiveConfidenceScore)&&(identical(other.knowledgeConfidenceScore, knowledgeConfidenceScore) || other.knowledgeConfidenceScore == knowledgeConfidenceScore)&&(identical(other.difficultyConfidenceScore, difficultyConfidenceScore) || other.difficultyConfidenceScore == difficultyConfidenceScore)&&(identical(other.isImported, isImported) || other.isImported == isImported)&&(identical(other.isDelete, isDelete) || other.isDelete == isDelete)&&const DeepCollectionEquality().equals(other.options, options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,questionId,sourceId,readingId,order,questionText,questionTextLatex,solutionText,solutionTextLatex,readingTitle,readingText,readingTextVn,llmSolutionText,llmSolutionTextLatex,llmSolutionConfidenceScore,readingTextLatex,imageDescription,answerKey,correctAnswer,answerDataFormatCode,originalLanguageCode,classId,className,subjectId,subjectName,chapterId,chapterName,topicId,topicName,objectiveId,objectiveName,insightId,insightName,abilityId,abilityName,abilityTwoId,abilityTwoName,cognitiveId,cognitiveName,cognitiveTwoId,cognitiveTwoName,knowledgeId,knowledgeName,knowledgeTwoId,knowledgeTwoName,difficultyId,difficultyName,difficultyTwoId,difficultyTwoName,levelId,levelName,questionTypeId,hasError,reviewStatus,reviewUpdatedAt,reviewUpdatedBy,llmSyncedAt,importSyncedAt,issueTypeCode,issueSeverityCode,issueText,suggestedFixText,issueUpdatedAt,createdAt,updatedAt,classConfidenceScore,subjectConfidenceScore,chapterConfidenceScore,topicConfidenceScore,objectiveConfidenceScore,insightConfidenceScore,abilityConfidenceScore,cognitiveConfidenceScore,knowledgeConfidenceScore,difficultyConfidenceScore,isImported,isDelete,const DeepCollectionEquality().hash(options)]);

@override
String toString() {
  return 'QuestionModelV2(questionId: $questionId, sourceId: $sourceId, readingId: $readingId, order: $order, questionText: $questionText, questionTextLatex: $questionTextLatex, solutionText: $solutionText, solutionTextLatex: $solutionTextLatex, readingTitle: $readingTitle, readingText: $readingText, readingTextVn: $readingTextVn, llmSolutionText: $llmSolutionText, llmSolutionTextLatex: $llmSolutionTextLatex, llmSolutionConfidenceScore: $llmSolutionConfidenceScore, readingTextLatex: $readingTextLatex, imageDescription: $imageDescription, answerKey: $answerKey, correctAnswer: $correctAnswer, answerDataFormatCode: $answerDataFormatCode, originalLanguageCode: $originalLanguageCode, classId: $classId, className: $className, subjectId: $subjectId, subjectName: $subjectName, chapterId: $chapterId, chapterName: $chapterName, topicId: $topicId, topicName: $topicName, objectiveId: $objectiveId, objectiveName: $objectiveName, insightId: $insightId, insightName: $insightName, abilityId: $abilityId, abilityName: $abilityName, abilityTwoId: $abilityTwoId, abilityTwoName: $abilityTwoName, cognitiveId: $cognitiveId, cognitiveName: $cognitiveName, cognitiveTwoId: $cognitiveTwoId, cognitiveTwoName: $cognitiveTwoName, knowledgeId: $knowledgeId, knowledgeName: $knowledgeName, knowledgeTwoId: $knowledgeTwoId, knowledgeTwoName: $knowledgeTwoName, difficultyId: $difficultyId, difficultyName: $difficultyName, difficultyTwoId: $difficultyTwoId, difficultyTwoName: $difficultyTwoName, levelId: $levelId, levelName: $levelName, questionTypeId: $questionTypeId, hasError: $hasError, reviewStatus: $reviewStatus, reviewUpdatedAt: $reviewUpdatedAt, reviewUpdatedBy: $reviewUpdatedBy, llmSyncedAt: $llmSyncedAt, importSyncedAt: $importSyncedAt, issueTypeCode: $issueTypeCode, issueSeverityCode: $issueSeverityCode, issueText: $issueText, suggestedFixText: $suggestedFixText, issueUpdatedAt: $issueUpdatedAt, createdAt: $createdAt, updatedAt: $updatedAt, classConfidenceScore: $classConfidenceScore, subjectConfidenceScore: $subjectConfidenceScore, chapterConfidenceScore: $chapterConfidenceScore, topicConfidenceScore: $topicConfidenceScore, objectiveConfidenceScore: $objectiveConfidenceScore, insightConfidenceScore: $insightConfidenceScore, abilityConfidenceScore: $abilityConfidenceScore, cognitiveConfidenceScore: $cognitiveConfidenceScore, knowledgeConfidenceScore: $knowledgeConfidenceScore, difficultyConfidenceScore: $difficultyConfidenceScore, isImported: $isImported, isDelete: $isDelete, options: $options)';
}


}

/// @nodoc
abstract mixin class $QuestionModelV2CopyWith<$Res>  {
  factory $QuestionModelV2CopyWith(QuestionModelV2 value, $Res Function(QuestionModelV2) _then) = _$QuestionModelV2CopyWithImpl;
@useResult
$Res call({
 int questionId, int? sourceId, int? readingId, int order, String questionText, String questionTextLatex, String solutionText, String solutionTextLatex, String readingTitle, String readingText, String readingTextVn, String? llmSolutionText, String? llmSolutionTextLatex, double? llmSolutionConfidenceScore, String? readingTextLatex, String? imageDescription, String? answerKey, String? correctAnswer, String? answerDataFormatCode, String? originalLanguageCode, int? classId, String? className, int? subjectId, String? subjectName, int? chapterId, String? chapterName, int? topicId, String? topicName, int? objectiveId, String? objectiveName, int? insightId, String? insightName, int? abilityId, String? abilityName, int? abilityTwoId, String? abilityTwoName, int? cognitiveId, String? cognitiveName, int? cognitiveTwoId, String? cognitiveTwoName, int? knowledgeId, String? knowledgeName, int? knowledgeTwoId, String? knowledgeTwoName, int? difficultyId, String? difficultyName, int? difficultyTwoId, String? difficultyTwoName, int? levelId, String? levelName, int? questionTypeId, bool? hasError, String? reviewStatus, DateTime? reviewUpdatedAt, String? reviewUpdatedBy, DateTime? llmSyncedAt, DateTime? importSyncedAt, String? issueTypeCode, String? issueSeverityCode, String? issueText, String? suggestedFixText, DateTime? issueUpdatedAt, DateTime? createdAt, DateTime? updatedAt, double? classConfidenceScore, double? subjectConfidenceScore, double? chapterConfidenceScore, double? topicConfidenceScore, double? objectiveConfidenceScore, double? insightConfidenceScore, double? abilityConfidenceScore, double? cognitiveConfidenceScore, double? knowledgeConfidenceScore, double? difficultyConfidenceScore, bool isImported, bool isDelete, List<OptionModel> options
});




}
/// @nodoc
class _$QuestionModelV2CopyWithImpl<$Res>
    implements $QuestionModelV2CopyWith<$Res> {
  _$QuestionModelV2CopyWithImpl(this._self, this._then);

  final QuestionModelV2 _self;
  final $Res Function(QuestionModelV2) _then;

/// Create a copy of QuestionModelV2
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? questionId = null,Object? sourceId = freezed,Object? readingId = freezed,Object? order = null,Object? questionText = null,Object? questionTextLatex = null,Object? solutionText = null,Object? solutionTextLatex = null,Object? readingTitle = null,Object? readingText = null,Object? readingTextVn = null,Object? llmSolutionText = freezed,Object? llmSolutionTextLatex = freezed,Object? llmSolutionConfidenceScore = freezed,Object? readingTextLatex = freezed,Object? imageDescription = freezed,Object? answerKey = freezed,Object? correctAnswer = freezed,Object? answerDataFormatCode = freezed,Object? originalLanguageCode = freezed,Object? classId = freezed,Object? className = freezed,Object? subjectId = freezed,Object? subjectName = freezed,Object? chapterId = freezed,Object? chapterName = freezed,Object? topicId = freezed,Object? topicName = freezed,Object? objectiveId = freezed,Object? objectiveName = freezed,Object? insightId = freezed,Object? insightName = freezed,Object? abilityId = freezed,Object? abilityName = freezed,Object? abilityTwoId = freezed,Object? abilityTwoName = freezed,Object? cognitiveId = freezed,Object? cognitiveName = freezed,Object? cognitiveTwoId = freezed,Object? cognitiveTwoName = freezed,Object? knowledgeId = freezed,Object? knowledgeName = freezed,Object? knowledgeTwoId = freezed,Object? knowledgeTwoName = freezed,Object? difficultyId = freezed,Object? difficultyName = freezed,Object? difficultyTwoId = freezed,Object? difficultyTwoName = freezed,Object? levelId = freezed,Object? levelName = freezed,Object? questionTypeId = freezed,Object? hasError = freezed,Object? reviewStatus = freezed,Object? reviewUpdatedAt = freezed,Object? reviewUpdatedBy = freezed,Object? llmSyncedAt = freezed,Object? importSyncedAt = freezed,Object? issueTypeCode = freezed,Object? issueSeverityCode = freezed,Object? issueText = freezed,Object? suggestedFixText = freezed,Object? issueUpdatedAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? classConfidenceScore = freezed,Object? subjectConfidenceScore = freezed,Object? chapterConfidenceScore = freezed,Object? topicConfidenceScore = freezed,Object? objectiveConfidenceScore = freezed,Object? insightConfidenceScore = freezed,Object? abilityConfidenceScore = freezed,Object? cognitiveConfidenceScore = freezed,Object? knowledgeConfidenceScore = freezed,Object? difficultyConfidenceScore = freezed,Object? isImported = null,Object? isDelete = null,Object? options = null,}) {
  return _then(_self.copyWith(
questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as int,sourceId: freezed == sourceId ? _self.sourceId : sourceId // ignore: cast_nullable_to_non_nullable
as int?,readingId: freezed == readingId ? _self.readingId : readingId // ignore: cast_nullable_to_non_nullable
as int?,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,questionText: null == questionText ? _self.questionText : questionText // ignore: cast_nullable_to_non_nullable
as String,questionTextLatex: null == questionTextLatex ? _self.questionTextLatex : questionTextLatex // ignore: cast_nullable_to_non_nullable
as String,solutionText: null == solutionText ? _self.solutionText : solutionText // ignore: cast_nullable_to_non_nullable
as String,solutionTextLatex: null == solutionTextLatex ? _self.solutionTextLatex : solutionTextLatex // ignore: cast_nullable_to_non_nullable
as String,readingTitle: null == readingTitle ? _self.readingTitle : readingTitle // ignore: cast_nullable_to_non_nullable
as String,readingText: null == readingText ? _self.readingText : readingText // ignore: cast_nullable_to_non_nullable
as String,readingTextVn: null == readingTextVn ? _self.readingTextVn : readingTextVn // ignore: cast_nullable_to_non_nullable
as String,llmSolutionText: freezed == llmSolutionText ? _self.llmSolutionText : llmSolutionText // ignore: cast_nullable_to_non_nullable
as String?,llmSolutionTextLatex: freezed == llmSolutionTextLatex ? _self.llmSolutionTextLatex : llmSolutionTextLatex // ignore: cast_nullable_to_non_nullable
as String?,llmSolutionConfidenceScore: freezed == llmSolutionConfidenceScore ? _self.llmSolutionConfidenceScore : llmSolutionConfidenceScore // ignore: cast_nullable_to_non_nullable
as double?,readingTextLatex: freezed == readingTextLatex ? _self.readingTextLatex : readingTextLatex // ignore: cast_nullable_to_non_nullable
as String?,imageDescription: freezed == imageDescription ? _self.imageDescription : imageDescription // ignore: cast_nullable_to_non_nullable
as String?,answerKey: freezed == answerKey ? _self.answerKey : answerKey // ignore: cast_nullable_to_non_nullable
as String?,correctAnswer: freezed == correctAnswer ? _self.correctAnswer : correctAnswer // ignore: cast_nullable_to_non_nullable
as String?,answerDataFormatCode: freezed == answerDataFormatCode ? _self.answerDataFormatCode : answerDataFormatCode // ignore: cast_nullable_to_non_nullable
as String?,originalLanguageCode: freezed == originalLanguageCode ? _self.originalLanguageCode : originalLanguageCode // ignore: cast_nullable_to_non_nullable
as String?,classId: freezed == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as int?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,subjectId: freezed == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as int?,subjectName: freezed == subjectName ? _self.subjectName : subjectName // ignore: cast_nullable_to_non_nullable
as String?,chapterId: freezed == chapterId ? _self.chapterId : chapterId // ignore: cast_nullable_to_non_nullable
as int?,chapterName: freezed == chapterName ? _self.chapterName : chapterName // ignore: cast_nullable_to_non_nullable
as String?,topicId: freezed == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as int?,topicName: freezed == topicName ? _self.topicName : topicName // ignore: cast_nullable_to_non_nullable
as String?,objectiveId: freezed == objectiveId ? _self.objectiveId : objectiveId // ignore: cast_nullable_to_non_nullable
as int?,objectiveName: freezed == objectiveName ? _self.objectiveName : objectiveName // ignore: cast_nullable_to_non_nullable
as String?,insightId: freezed == insightId ? _self.insightId : insightId // ignore: cast_nullable_to_non_nullable
as int?,insightName: freezed == insightName ? _self.insightName : insightName // ignore: cast_nullable_to_non_nullable
as String?,abilityId: freezed == abilityId ? _self.abilityId : abilityId // ignore: cast_nullable_to_non_nullable
as int?,abilityName: freezed == abilityName ? _self.abilityName : abilityName // ignore: cast_nullable_to_non_nullable
as String?,abilityTwoId: freezed == abilityTwoId ? _self.abilityTwoId : abilityTwoId // ignore: cast_nullable_to_non_nullable
as int?,abilityTwoName: freezed == abilityTwoName ? _self.abilityTwoName : abilityTwoName // ignore: cast_nullable_to_non_nullable
as String?,cognitiveId: freezed == cognitiveId ? _self.cognitiveId : cognitiveId // ignore: cast_nullable_to_non_nullable
as int?,cognitiveName: freezed == cognitiveName ? _self.cognitiveName : cognitiveName // ignore: cast_nullable_to_non_nullable
as String?,cognitiveTwoId: freezed == cognitiveTwoId ? _self.cognitiveTwoId : cognitiveTwoId // ignore: cast_nullable_to_non_nullable
as int?,cognitiveTwoName: freezed == cognitiveTwoName ? _self.cognitiveTwoName : cognitiveTwoName // ignore: cast_nullable_to_non_nullable
as String?,knowledgeId: freezed == knowledgeId ? _self.knowledgeId : knowledgeId // ignore: cast_nullable_to_non_nullable
as int?,knowledgeName: freezed == knowledgeName ? _self.knowledgeName : knowledgeName // ignore: cast_nullable_to_non_nullable
as String?,knowledgeTwoId: freezed == knowledgeTwoId ? _self.knowledgeTwoId : knowledgeTwoId // ignore: cast_nullable_to_non_nullable
as int?,knowledgeTwoName: freezed == knowledgeTwoName ? _self.knowledgeTwoName : knowledgeTwoName // ignore: cast_nullable_to_non_nullable
as String?,difficultyId: freezed == difficultyId ? _self.difficultyId : difficultyId // ignore: cast_nullable_to_non_nullable
as int?,difficultyName: freezed == difficultyName ? _self.difficultyName : difficultyName // ignore: cast_nullable_to_non_nullable
as String?,difficultyTwoId: freezed == difficultyTwoId ? _self.difficultyTwoId : difficultyTwoId // ignore: cast_nullable_to_non_nullable
as int?,difficultyTwoName: freezed == difficultyTwoName ? _self.difficultyTwoName : difficultyTwoName // ignore: cast_nullable_to_non_nullable
as String?,levelId: freezed == levelId ? _self.levelId : levelId // ignore: cast_nullable_to_non_nullable
as int?,levelName: freezed == levelName ? _self.levelName : levelName // ignore: cast_nullable_to_non_nullable
as String?,questionTypeId: freezed == questionTypeId ? _self.questionTypeId : questionTypeId // ignore: cast_nullable_to_non_nullable
as int?,hasError: freezed == hasError ? _self.hasError : hasError // ignore: cast_nullable_to_non_nullable
as bool?,reviewStatus: freezed == reviewStatus ? _self.reviewStatus : reviewStatus // ignore: cast_nullable_to_non_nullable
as String?,reviewUpdatedAt: freezed == reviewUpdatedAt ? _self.reviewUpdatedAt : reviewUpdatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,reviewUpdatedBy: freezed == reviewUpdatedBy ? _self.reviewUpdatedBy : reviewUpdatedBy // ignore: cast_nullable_to_non_nullable
as String?,llmSyncedAt: freezed == llmSyncedAt ? _self.llmSyncedAt : llmSyncedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,importSyncedAt: freezed == importSyncedAt ? _self.importSyncedAt : importSyncedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,issueTypeCode: freezed == issueTypeCode ? _self.issueTypeCode : issueTypeCode // ignore: cast_nullable_to_non_nullable
as String?,issueSeverityCode: freezed == issueSeverityCode ? _self.issueSeverityCode : issueSeverityCode // ignore: cast_nullable_to_non_nullable
as String?,issueText: freezed == issueText ? _self.issueText : issueText // ignore: cast_nullable_to_non_nullable
as String?,suggestedFixText: freezed == suggestedFixText ? _self.suggestedFixText : suggestedFixText // ignore: cast_nullable_to_non_nullable
as String?,issueUpdatedAt: freezed == issueUpdatedAt ? _self.issueUpdatedAt : issueUpdatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,classConfidenceScore: freezed == classConfidenceScore ? _self.classConfidenceScore : classConfidenceScore // ignore: cast_nullable_to_non_nullable
as double?,subjectConfidenceScore: freezed == subjectConfidenceScore ? _self.subjectConfidenceScore : subjectConfidenceScore // ignore: cast_nullable_to_non_nullable
as double?,chapterConfidenceScore: freezed == chapterConfidenceScore ? _self.chapterConfidenceScore : chapterConfidenceScore // ignore: cast_nullable_to_non_nullable
as double?,topicConfidenceScore: freezed == topicConfidenceScore ? _self.topicConfidenceScore : topicConfidenceScore // ignore: cast_nullable_to_non_nullable
as double?,objectiveConfidenceScore: freezed == objectiveConfidenceScore ? _self.objectiveConfidenceScore : objectiveConfidenceScore // ignore: cast_nullable_to_non_nullable
as double?,insightConfidenceScore: freezed == insightConfidenceScore ? _self.insightConfidenceScore : insightConfidenceScore // ignore: cast_nullable_to_non_nullable
as double?,abilityConfidenceScore: freezed == abilityConfidenceScore ? _self.abilityConfidenceScore : abilityConfidenceScore // ignore: cast_nullable_to_non_nullable
as double?,cognitiveConfidenceScore: freezed == cognitiveConfidenceScore ? _self.cognitiveConfidenceScore : cognitiveConfidenceScore // ignore: cast_nullable_to_non_nullable
as double?,knowledgeConfidenceScore: freezed == knowledgeConfidenceScore ? _self.knowledgeConfidenceScore : knowledgeConfidenceScore // ignore: cast_nullable_to_non_nullable
as double?,difficultyConfidenceScore: freezed == difficultyConfidenceScore ? _self.difficultyConfidenceScore : difficultyConfidenceScore // ignore: cast_nullable_to_non_nullable
as double?,isImported: null == isImported ? _self.isImported : isImported // ignore: cast_nullable_to_non_nullable
as bool,isDelete: null == isDelete ? _self.isDelete : isDelete // ignore: cast_nullable_to_non_nullable
as bool,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [QuestionModelV2].
extension QuestionModelV2Patterns on QuestionModelV2 {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuestionModelV2 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuestionModelV2() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuestionModelV2 value)  $default,){
final _that = this;
switch (_that) {
case _QuestionModelV2():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuestionModelV2 value)?  $default,){
final _that = this;
switch (_that) {
case _QuestionModelV2() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int questionId,  int? sourceId,  int? readingId,  int order,  String questionText,  String questionTextLatex,  String solutionText,  String solutionTextLatex,  String readingTitle,  String readingText,  String readingTextVn,  String? llmSolutionText,  String? llmSolutionTextLatex,  double? llmSolutionConfidenceScore,  String? readingTextLatex,  String? imageDescription,  String? answerKey,  String? correctAnswer,  String? answerDataFormatCode,  String? originalLanguageCode,  int? classId,  String? className,  int? subjectId,  String? subjectName,  int? chapterId,  String? chapterName,  int? topicId,  String? topicName,  int? objectiveId,  String? objectiveName,  int? insightId,  String? insightName,  int? abilityId,  String? abilityName,  int? abilityTwoId,  String? abilityTwoName,  int? cognitiveId,  String? cognitiveName,  int? cognitiveTwoId,  String? cognitiveTwoName,  int? knowledgeId,  String? knowledgeName,  int? knowledgeTwoId,  String? knowledgeTwoName,  int? difficultyId,  String? difficultyName,  int? difficultyTwoId,  String? difficultyTwoName,  int? levelId,  String? levelName,  int? questionTypeId,  bool? hasError,  String? reviewStatus,  DateTime? reviewUpdatedAt,  String? reviewUpdatedBy,  DateTime? llmSyncedAt,  DateTime? importSyncedAt,  String? issueTypeCode,  String? issueSeverityCode,  String? issueText,  String? suggestedFixText,  DateTime? issueUpdatedAt,  DateTime? createdAt,  DateTime? updatedAt,  double? classConfidenceScore,  double? subjectConfidenceScore,  double? chapterConfidenceScore,  double? topicConfidenceScore,  double? objectiveConfidenceScore,  double? insightConfidenceScore,  double? abilityConfidenceScore,  double? cognitiveConfidenceScore,  double? knowledgeConfidenceScore,  double? difficultyConfidenceScore,  bool isImported,  bool isDelete,  List<OptionModel> options)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuestionModelV2() when $default != null:
return $default(_that.questionId,_that.sourceId,_that.readingId,_that.order,_that.questionText,_that.questionTextLatex,_that.solutionText,_that.solutionTextLatex,_that.readingTitle,_that.readingText,_that.readingTextVn,_that.llmSolutionText,_that.llmSolutionTextLatex,_that.llmSolutionConfidenceScore,_that.readingTextLatex,_that.imageDescription,_that.answerKey,_that.correctAnswer,_that.answerDataFormatCode,_that.originalLanguageCode,_that.classId,_that.className,_that.subjectId,_that.subjectName,_that.chapterId,_that.chapterName,_that.topicId,_that.topicName,_that.objectiveId,_that.objectiveName,_that.insightId,_that.insightName,_that.abilityId,_that.abilityName,_that.abilityTwoId,_that.abilityTwoName,_that.cognitiveId,_that.cognitiveName,_that.cognitiveTwoId,_that.cognitiveTwoName,_that.knowledgeId,_that.knowledgeName,_that.knowledgeTwoId,_that.knowledgeTwoName,_that.difficultyId,_that.difficultyName,_that.difficultyTwoId,_that.difficultyTwoName,_that.levelId,_that.levelName,_that.questionTypeId,_that.hasError,_that.reviewStatus,_that.reviewUpdatedAt,_that.reviewUpdatedBy,_that.llmSyncedAt,_that.importSyncedAt,_that.issueTypeCode,_that.issueSeverityCode,_that.issueText,_that.suggestedFixText,_that.issueUpdatedAt,_that.createdAt,_that.updatedAt,_that.classConfidenceScore,_that.subjectConfidenceScore,_that.chapterConfidenceScore,_that.topicConfidenceScore,_that.objectiveConfidenceScore,_that.insightConfidenceScore,_that.abilityConfidenceScore,_that.cognitiveConfidenceScore,_that.knowledgeConfidenceScore,_that.difficultyConfidenceScore,_that.isImported,_that.isDelete,_that.options);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int questionId,  int? sourceId,  int? readingId,  int order,  String questionText,  String questionTextLatex,  String solutionText,  String solutionTextLatex,  String readingTitle,  String readingText,  String readingTextVn,  String? llmSolutionText,  String? llmSolutionTextLatex,  double? llmSolutionConfidenceScore,  String? readingTextLatex,  String? imageDescription,  String? answerKey,  String? correctAnswer,  String? answerDataFormatCode,  String? originalLanguageCode,  int? classId,  String? className,  int? subjectId,  String? subjectName,  int? chapterId,  String? chapterName,  int? topicId,  String? topicName,  int? objectiveId,  String? objectiveName,  int? insightId,  String? insightName,  int? abilityId,  String? abilityName,  int? abilityTwoId,  String? abilityTwoName,  int? cognitiveId,  String? cognitiveName,  int? cognitiveTwoId,  String? cognitiveTwoName,  int? knowledgeId,  String? knowledgeName,  int? knowledgeTwoId,  String? knowledgeTwoName,  int? difficultyId,  String? difficultyName,  int? difficultyTwoId,  String? difficultyTwoName,  int? levelId,  String? levelName,  int? questionTypeId,  bool? hasError,  String? reviewStatus,  DateTime? reviewUpdatedAt,  String? reviewUpdatedBy,  DateTime? llmSyncedAt,  DateTime? importSyncedAt,  String? issueTypeCode,  String? issueSeverityCode,  String? issueText,  String? suggestedFixText,  DateTime? issueUpdatedAt,  DateTime? createdAt,  DateTime? updatedAt,  double? classConfidenceScore,  double? subjectConfidenceScore,  double? chapterConfidenceScore,  double? topicConfidenceScore,  double? objectiveConfidenceScore,  double? insightConfidenceScore,  double? abilityConfidenceScore,  double? cognitiveConfidenceScore,  double? knowledgeConfidenceScore,  double? difficultyConfidenceScore,  bool isImported,  bool isDelete,  List<OptionModel> options)  $default,) {final _that = this;
switch (_that) {
case _QuestionModelV2():
return $default(_that.questionId,_that.sourceId,_that.readingId,_that.order,_that.questionText,_that.questionTextLatex,_that.solutionText,_that.solutionTextLatex,_that.readingTitle,_that.readingText,_that.readingTextVn,_that.llmSolutionText,_that.llmSolutionTextLatex,_that.llmSolutionConfidenceScore,_that.readingTextLatex,_that.imageDescription,_that.answerKey,_that.correctAnswer,_that.answerDataFormatCode,_that.originalLanguageCode,_that.classId,_that.className,_that.subjectId,_that.subjectName,_that.chapterId,_that.chapterName,_that.topicId,_that.topicName,_that.objectiveId,_that.objectiveName,_that.insightId,_that.insightName,_that.abilityId,_that.abilityName,_that.abilityTwoId,_that.abilityTwoName,_that.cognitiveId,_that.cognitiveName,_that.cognitiveTwoId,_that.cognitiveTwoName,_that.knowledgeId,_that.knowledgeName,_that.knowledgeTwoId,_that.knowledgeTwoName,_that.difficultyId,_that.difficultyName,_that.difficultyTwoId,_that.difficultyTwoName,_that.levelId,_that.levelName,_that.questionTypeId,_that.hasError,_that.reviewStatus,_that.reviewUpdatedAt,_that.reviewUpdatedBy,_that.llmSyncedAt,_that.importSyncedAt,_that.issueTypeCode,_that.issueSeverityCode,_that.issueText,_that.suggestedFixText,_that.issueUpdatedAt,_that.createdAt,_that.updatedAt,_that.classConfidenceScore,_that.subjectConfidenceScore,_that.chapterConfidenceScore,_that.topicConfidenceScore,_that.objectiveConfidenceScore,_that.insightConfidenceScore,_that.abilityConfidenceScore,_that.cognitiveConfidenceScore,_that.knowledgeConfidenceScore,_that.difficultyConfidenceScore,_that.isImported,_that.isDelete,_that.options);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int questionId,  int? sourceId,  int? readingId,  int order,  String questionText,  String questionTextLatex,  String solutionText,  String solutionTextLatex,  String readingTitle,  String readingText,  String readingTextVn,  String? llmSolutionText,  String? llmSolutionTextLatex,  double? llmSolutionConfidenceScore,  String? readingTextLatex,  String? imageDescription,  String? answerKey,  String? correctAnswer,  String? answerDataFormatCode,  String? originalLanguageCode,  int? classId,  String? className,  int? subjectId,  String? subjectName,  int? chapterId,  String? chapterName,  int? topicId,  String? topicName,  int? objectiveId,  String? objectiveName,  int? insightId,  String? insightName,  int? abilityId,  String? abilityName,  int? abilityTwoId,  String? abilityTwoName,  int? cognitiveId,  String? cognitiveName,  int? cognitiveTwoId,  String? cognitiveTwoName,  int? knowledgeId,  String? knowledgeName,  int? knowledgeTwoId,  String? knowledgeTwoName,  int? difficultyId,  String? difficultyName,  int? difficultyTwoId,  String? difficultyTwoName,  int? levelId,  String? levelName,  int? questionTypeId,  bool? hasError,  String? reviewStatus,  DateTime? reviewUpdatedAt,  String? reviewUpdatedBy,  DateTime? llmSyncedAt,  DateTime? importSyncedAt,  String? issueTypeCode,  String? issueSeverityCode,  String? issueText,  String? suggestedFixText,  DateTime? issueUpdatedAt,  DateTime? createdAt,  DateTime? updatedAt,  double? classConfidenceScore,  double? subjectConfidenceScore,  double? chapterConfidenceScore,  double? topicConfidenceScore,  double? objectiveConfidenceScore,  double? insightConfidenceScore,  double? abilityConfidenceScore,  double? cognitiveConfidenceScore,  double? knowledgeConfidenceScore,  double? difficultyConfidenceScore,  bool isImported,  bool isDelete,  List<OptionModel> options)?  $default,) {final _that = this;
switch (_that) {
case _QuestionModelV2() when $default != null:
return $default(_that.questionId,_that.sourceId,_that.readingId,_that.order,_that.questionText,_that.questionTextLatex,_that.solutionText,_that.solutionTextLatex,_that.readingTitle,_that.readingText,_that.readingTextVn,_that.llmSolutionText,_that.llmSolutionTextLatex,_that.llmSolutionConfidenceScore,_that.readingTextLatex,_that.imageDescription,_that.answerKey,_that.correctAnswer,_that.answerDataFormatCode,_that.originalLanguageCode,_that.classId,_that.className,_that.subjectId,_that.subjectName,_that.chapterId,_that.chapterName,_that.topicId,_that.topicName,_that.objectiveId,_that.objectiveName,_that.insightId,_that.insightName,_that.abilityId,_that.abilityName,_that.abilityTwoId,_that.abilityTwoName,_that.cognitiveId,_that.cognitiveName,_that.cognitiveTwoId,_that.cognitiveTwoName,_that.knowledgeId,_that.knowledgeName,_that.knowledgeTwoId,_that.knowledgeTwoName,_that.difficultyId,_that.difficultyName,_that.difficultyTwoId,_that.difficultyTwoName,_that.levelId,_that.levelName,_that.questionTypeId,_that.hasError,_that.reviewStatus,_that.reviewUpdatedAt,_that.reviewUpdatedBy,_that.llmSyncedAt,_that.importSyncedAt,_that.issueTypeCode,_that.issueSeverityCode,_that.issueText,_that.suggestedFixText,_that.issueUpdatedAt,_that.createdAt,_that.updatedAt,_that.classConfidenceScore,_that.subjectConfidenceScore,_that.chapterConfidenceScore,_that.topicConfidenceScore,_that.objectiveConfidenceScore,_that.insightConfidenceScore,_that.abilityConfidenceScore,_that.cognitiveConfidenceScore,_that.knowledgeConfidenceScore,_that.difficultyConfidenceScore,_that.isImported,_that.isDelete,_that.options);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuestionModelV2 implements QuestionModelV2 {
  const _QuestionModelV2({this.questionId = 0, this.sourceId, this.readingId, this.order = 0, this.questionText = '', this.questionTextLatex = '', this.solutionText = '', this.solutionTextLatex = '', this.readingTitle = '', this.readingText = '', this.readingTextVn = '', this.llmSolutionText, this.llmSolutionTextLatex, this.llmSolutionConfidenceScore, this.readingTextLatex, this.imageDescription, this.answerKey, this.correctAnswer, this.answerDataFormatCode, this.originalLanguageCode, this.classId, this.className, this.subjectId, this.subjectName, this.chapterId, this.chapterName, this.topicId, this.topicName, this.objectiveId, this.objectiveName, this.insightId, this.insightName, this.abilityId, this.abilityName, this.abilityTwoId, this.abilityTwoName, this.cognitiveId, this.cognitiveName, this.cognitiveTwoId, this.cognitiveTwoName, this.knowledgeId, this.knowledgeName, this.knowledgeTwoId, this.knowledgeTwoName, this.difficultyId, this.difficultyName, this.difficultyTwoId, this.difficultyTwoName, this.levelId, this.levelName, this.questionTypeId, this.hasError, this.reviewStatus, this.reviewUpdatedAt, this.reviewUpdatedBy, this.llmSyncedAt, this.importSyncedAt, this.issueTypeCode, this.issueSeverityCode, this.issueText, this.suggestedFixText, this.issueUpdatedAt, this.createdAt, this.updatedAt, this.classConfidenceScore, this.subjectConfidenceScore, this.chapterConfidenceScore, this.topicConfidenceScore, this.objectiveConfidenceScore, this.insightConfidenceScore, this.abilityConfidenceScore, this.cognitiveConfidenceScore, this.knowledgeConfidenceScore, this.difficultyConfidenceScore, this.isImported = false, this.isDelete = false, final  List<OptionModel> options = const []}): _options = options;
  factory _QuestionModelV2.fromJson(Map<String, dynamic> json) => _$QuestionModelV2FromJson(json);

@override@JsonKey() final  int questionId;
@override final  int? sourceId;
@override final  int? readingId;
@override@JsonKey() final  int order;
@override@JsonKey() final  String questionText;
@override@JsonKey() final  String questionTextLatex;
@override@JsonKey() final  String solutionText;
@override@JsonKey() final  String solutionTextLatex;
@override@JsonKey() final  String readingTitle;
@override@JsonKey() final  String readingText;
@override@JsonKey() final  String readingTextVn;
@override final  String? llmSolutionText;
@override final  String? llmSolutionTextLatex;
@override final  double? llmSolutionConfidenceScore;
@override final  String? readingTextLatex;
@override final  String? imageDescription;
@override final  String? answerKey;
@override final  String? correctAnswer;
@override final  String? answerDataFormatCode;
@override final  String? originalLanguageCode;
@override final  int? classId;
@override final  String? className;
@override final  int? subjectId;
@override final  String? subjectName;
@override final  int? chapterId;
@override final  String? chapterName;
@override final  int? topicId;
@override final  String? topicName;
@override final  int? objectiveId;
@override final  String? objectiveName;
@override final  int? insightId;
@override final  String? insightName;
@override final  int? abilityId;
@override final  String? abilityName;
@override final  int? abilityTwoId;
@override final  String? abilityTwoName;
@override final  int? cognitiveId;
@override final  String? cognitiveName;
@override final  int? cognitiveTwoId;
@override final  String? cognitiveTwoName;
@override final  int? knowledgeId;
@override final  String? knowledgeName;
@override final  int? knowledgeTwoId;
@override final  String? knowledgeTwoName;
@override final  int? difficultyId;
@override final  String? difficultyName;
@override final  int? difficultyTwoId;
@override final  String? difficultyTwoName;
@override final  int? levelId;
@override final  String? levelName;
@override final  int? questionTypeId;
@override final  bool? hasError;
@override final  String? reviewStatus;
@override final  DateTime? reviewUpdatedAt;
@override final  String? reviewUpdatedBy;
@override final  DateTime? llmSyncedAt;
@override final  DateTime? importSyncedAt;
@override final  String? issueTypeCode;
@override final  String? issueSeverityCode;
@override final  String? issueText;
@override final  String? suggestedFixText;
@override final  DateTime? issueUpdatedAt;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
// @Default([]) List<PlanModel> plans,
@override final  double? classConfidenceScore;
@override final  double? subjectConfidenceScore;
@override final  double? chapterConfidenceScore;
@override final  double? topicConfidenceScore;
@override final  double? objectiveConfidenceScore;
@override final  double? insightConfidenceScore;
@override final  double? abilityConfidenceScore;
@override final  double? cognitiveConfidenceScore;
@override final  double? knowledgeConfidenceScore;
@override final  double? difficultyConfidenceScore;
// LlmIssueModel? issue,
// LlmDedupModel? dedup,
@override@JsonKey() final  bool isImported;
@override@JsonKey() final  bool isDelete;
 final  List<OptionModel> _options;
@override@JsonKey() List<OptionModel> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}


/// Create a copy of QuestionModelV2
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestionModelV2CopyWith<_QuestionModelV2> get copyWith => __$QuestionModelV2CopyWithImpl<_QuestionModelV2>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuestionModelV2ToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuestionModelV2&&(identical(other.questionId, questionId) || other.questionId == questionId)&&(identical(other.sourceId, sourceId) || other.sourceId == sourceId)&&(identical(other.readingId, readingId) || other.readingId == readingId)&&(identical(other.order, order) || other.order == order)&&(identical(other.questionText, questionText) || other.questionText == questionText)&&(identical(other.questionTextLatex, questionTextLatex) || other.questionTextLatex == questionTextLatex)&&(identical(other.solutionText, solutionText) || other.solutionText == solutionText)&&(identical(other.solutionTextLatex, solutionTextLatex) || other.solutionTextLatex == solutionTextLatex)&&(identical(other.readingTitle, readingTitle) || other.readingTitle == readingTitle)&&(identical(other.readingText, readingText) || other.readingText == readingText)&&(identical(other.readingTextVn, readingTextVn) || other.readingTextVn == readingTextVn)&&(identical(other.llmSolutionText, llmSolutionText) || other.llmSolutionText == llmSolutionText)&&(identical(other.llmSolutionTextLatex, llmSolutionTextLatex) || other.llmSolutionTextLatex == llmSolutionTextLatex)&&(identical(other.llmSolutionConfidenceScore, llmSolutionConfidenceScore) || other.llmSolutionConfidenceScore == llmSolutionConfidenceScore)&&(identical(other.readingTextLatex, readingTextLatex) || other.readingTextLatex == readingTextLatex)&&(identical(other.imageDescription, imageDescription) || other.imageDescription == imageDescription)&&(identical(other.answerKey, answerKey) || other.answerKey == answerKey)&&(identical(other.correctAnswer, correctAnswer) || other.correctAnswer == correctAnswer)&&(identical(other.answerDataFormatCode, answerDataFormatCode) || other.answerDataFormatCode == answerDataFormatCode)&&(identical(other.originalLanguageCode, originalLanguageCode) || other.originalLanguageCode == originalLanguageCode)&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.className, className) || other.className == className)&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId)&&(identical(other.subjectName, subjectName) || other.subjectName == subjectName)&&(identical(other.chapterId, chapterId) || other.chapterId == chapterId)&&(identical(other.chapterName, chapterName) || other.chapterName == chapterName)&&(identical(other.topicId, topicId) || other.topicId == topicId)&&(identical(other.topicName, topicName) || other.topicName == topicName)&&(identical(other.objectiveId, objectiveId) || other.objectiveId == objectiveId)&&(identical(other.objectiveName, objectiveName) || other.objectiveName == objectiveName)&&(identical(other.insightId, insightId) || other.insightId == insightId)&&(identical(other.insightName, insightName) || other.insightName == insightName)&&(identical(other.abilityId, abilityId) || other.abilityId == abilityId)&&(identical(other.abilityName, abilityName) || other.abilityName == abilityName)&&(identical(other.abilityTwoId, abilityTwoId) || other.abilityTwoId == abilityTwoId)&&(identical(other.abilityTwoName, abilityTwoName) || other.abilityTwoName == abilityTwoName)&&(identical(other.cognitiveId, cognitiveId) || other.cognitiveId == cognitiveId)&&(identical(other.cognitiveName, cognitiveName) || other.cognitiveName == cognitiveName)&&(identical(other.cognitiveTwoId, cognitiveTwoId) || other.cognitiveTwoId == cognitiveTwoId)&&(identical(other.cognitiveTwoName, cognitiveTwoName) || other.cognitiveTwoName == cognitiveTwoName)&&(identical(other.knowledgeId, knowledgeId) || other.knowledgeId == knowledgeId)&&(identical(other.knowledgeName, knowledgeName) || other.knowledgeName == knowledgeName)&&(identical(other.knowledgeTwoId, knowledgeTwoId) || other.knowledgeTwoId == knowledgeTwoId)&&(identical(other.knowledgeTwoName, knowledgeTwoName) || other.knowledgeTwoName == knowledgeTwoName)&&(identical(other.difficultyId, difficultyId) || other.difficultyId == difficultyId)&&(identical(other.difficultyName, difficultyName) || other.difficultyName == difficultyName)&&(identical(other.difficultyTwoId, difficultyTwoId) || other.difficultyTwoId == difficultyTwoId)&&(identical(other.difficultyTwoName, difficultyTwoName) || other.difficultyTwoName == difficultyTwoName)&&(identical(other.levelId, levelId) || other.levelId == levelId)&&(identical(other.levelName, levelName) || other.levelName == levelName)&&(identical(other.questionTypeId, questionTypeId) || other.questionTypeId == questionTypeId)&&(identical(other.hasError, hasError) || other.hasError == hasError)&&(identical(other.reviewStatus, reviewStatus) || other.reviewStatus == reviewStatus)&&(identical(other.reviewUpdatedAt, reviewUpdatedAt) || other.reviewUpdatedAt == reviewUpdatedAt)&&(identical(other.reviewUpdatedBy, reviewUpdatedBy) || other.reviewUpdatedBy == reviewUpdatedBy)&&(identical(other.llmSyncedAt, llmSyncedAt) || other.llmSyncedAt == llmSyncedAt)&&(identical(other.importSyncedAt, importSyncedAt) || other.importSyncedAt == importSyncedAt)&&(identical(other.issueTypeCode, issueTypeCode) || other.issueTypeCode == issueTypeCode)&&(identical(other.issueSeverityCode, issueSeverityCode) || other.issueSeverityCode == issueSeverityCode)&&(identical(other.issueText, issueText) || other.issueText == issueText)&&(identical(other.suggestedFixText, suggestedFixText) || other.suggestedFixText == suggestedFixText)&&(identical(other.issueUpdatedAt, issueUpdatedAt) || other.issueUpdatedAt == issueUpdatedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.classConfidenceScore, classConfidenceScore) || other.classConfidenceScore == classConfidenceScore)&&(identical(other.subjectConfidenceScore, subjectConfidenceScore) || other.subjectConfidenceScore == subjectConfidenceScore)&&(identical(other.chapterConfidenceScore, chapterConfidenceScore) || other.chapterConfidenceScore == chapterConfidenceScore)&&(identical(other.topicConfidenceScore, topicConfidenceScore) || other.topicConfidenceScore == topicConfidenceScore)&&(identical(other.objectiveConfidenceScore, objectiveConfidenceScore) || other.objectiveConfidenceScore == objectiveConfidenceScore)&&(identical(other.insightConfidenceScore, insightConfidenceScore) || other.insightConfidenceScore == insightConfidenceScore)&&(identical(other.abilityConfidenceScore, abilityConfidenceScore) || other.abilityConfidenceScore == abilityConfidenceScore)&&(identical(other.cognitiveConfidenceScore, cognitiveConfidenceScore) || other.cognitiveConfidenceScore == cognitiveConfidenceScore)&&(identical(other.knowledgeConfidenceScore, knowledgeConfidenceScore) || other.knowledgeConfidenceScore == knowledgeConfidenceScore)&&(identical(other.difficultyConfidenceScore, difficultyConfidenceScore) || other.difficultyConfidenceScore == difficultyConfidenceScore)&&(identical(other.isImported, isImported) || other.isImported == isImported)&&(identical(other.isDelete, isDelete) || other.isDelete == isDelete)&&const DeepCollectionEquality().equals(other._options, _options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,questionId,sourceId,readingId,order,questionText,questionTextLatex,solutionText,solutionTextLatex,readingTitle,readingText,readingTextVn,llmSolutionText,llmSolutionTextLatex,llmSolutionConfidenceScore,readingTextLatex,imageDescription,answerKey,correctAnswer,answerDataFormatCode,originalLanguageCode,classId,className,subjectId,subjectName,chapterId,chapterName,topicId,topicName,objectiveId,objectiveName,insightId,insightName,abilityId,abilityName,abilityTwoId,abilityTwoName,cognitiveId,cognitiveName,cognitiveTwoId,cognitiveTwoName,knowledgeId,knowledgeName,knowledgeTwoId,knowledgeTwoName,difficultyId,difficultyName,difficultyTwoId,difficultyTwoName,levelId,levelName,questionTypeId,hasError,reviewStatus,reviewUpdatedAt,reviewUpdatedBy,llmSyncedAt,importSyncedAt,issueTypeCode,issueSeverityCode,issueText,suggestedFixText,issueUpdatedAt,createdAt,updatedAt,classConfidenceScore,subjectConfidenceScore,chapterConfidenceScore,topicConfidenceScore,objectiveConfidenceScore,insightConfidenceScore,abilityConfidenceScore,cognitiveConfidenceScore,knowledgeConfidenceScore,difficultyConfidenceScore,isImported,isDelete,const DeepCollectionEquality().hash(_options)]);

@override
String toString() {
  return 'QuestionModelV2(questionId: $questionId, sourceId: $sourceId, readingId: $readingId, order: $order, questionText: $questionText, questionTextLatex: $questionTextLatex, solutionText: $solutionText, solutionTextLatex: $solutionTextLatex, readingTitle: $readingTitle, readingText: $readingText, readingTextVn: $readingTextVn, llmSolutionText: $llmSolutionText, llmSolutionTextLatex: $llmSolutionTextLatex, llmSolutionConfidenceScore: $llmSolutionConfidenceScore, readingTextLatex: $readingTextLatex, imageDescription: $imageDescription, answerKey: $answerKey, correctAnswer: $correctAnswer, answerDataFormatCode: $answerDataFormatCode, originalLanguageCode: $originalLanguageCode, classId: $classId, className: $className, subjectId: $subjectId, subjectName: $subjectName, chapterId: $chapterId, chapterName: $chapterName, topicId: $topicId, topicName: $topicName, objectiveId: $objectiveId, objectiveName: $objectiveName, insightId: $insightId, insightName: $insightName, abilityId: $abilityId, abilityName: $abilityName, abilityTwoId: $abilityTwoId, abilityTwoName: $abilityTwoName, cognitiveId: $cognitiveId, cognitiveName: $cognitiveName, cognitiveTwoId: $cognitiveTwoId, cognitiveTwoName: $cognitiveTwoName, knowledgeId: $knowledgeId, knowledgeName: $knowledgeName, knowledgeTwoId: $knowledgeTwoId, knowledgeTwoName: $knowledgeTwoName, difficultyId: $difficultyId, difficultyName: $difficultyName, difficultyTwoId: $difficultyTwoId, difficultyTwoName: $difficultyTwoName, levelId: $levelId, levelName: $levelName, questionTypeId: $questionTypeId, hasError: $hasError, reviewStatus: $reviewStatus, reviewUpdatedAt: $reviewUpdatedAt, reviewUpdatedBy: $reviewUpdatedBy, llmSyncedAt: $llmSyncedAt, importSyncedAt: $importSyncedAt, issueTypeCode: $issueTypeCode, issueSeverityCode: $issueSeverityCode, issueText: $issueText, suggestedFixText: $suggestedFixText, issueUpdatedAt: $issueUpdatedAt, createdAt: $createdAt, updatedAt: $updatedAt, classConfidenceScore: $classConfidenceScore, subjectConfidenceScore: $subjectConfidenceScore, chapterConfidenceScore: $chapterConfidenceScore, topicConfidenceScore: $topicConfidenceScore, objectiveConfidenceScore: $objectiveConfidenceScore, insightConfidenceScore: $insightConfidenceScore, abilityConfidenceScore: $abilityConfidenceScore, cognitiveConfidenceScore: $cognitiveConfidenceScore, knowledgeConfidenceScore: $knowledgeConfidenceScore, difficultyConfidenceScore: $difficultyConfidenceScore, isImported: $isImported, isDelete: $isDelete, options: $options)';
}


}

/// @nodoc
abstract mixin class _$QuestionModelV2CopyWith<$Res> implements $QuestionModelV2CopyWith<$Res> {
  factory _$QuestionModelV2CopyWith(_QuestionModelV2 value, $Res Function(_QuestionModelV2) _then) = __$QuestionModelV2CopyWithImpl;
@override @useResult
$Res call({
 int questionId, int? sourceId, int? readingId, int order, String questionText, String questionTextLatex, String solutionText, String solutionTextLatex, String readingTitle, String readingText, String readingTextVn, String? llmSolutionText, String? llmSolutionTextLatex, double? llmSolutionConfidenceScore, String? readingTextLatex, String? imageDescription, String? answerKey, String? correctAnswer, String? answerDataFormatCode, String? originalLanguageCode, int? classId, String? className, int? subjectId, String? subjectName, int? chapterId, String? chapterName, int? topicId, String? topicName, int? objectiveId, String? objectiveName, int? insightId, String? insightName, int? abilityId, String? abilityName, int? abilityTwoId, String? abilityTwoName, int? cognitiveId, String? cognitiveName, int? cognitiveTwoId, String? cognitiveTwoName, int? knowledgeId, String? knowledgeName, int? knowledgeTwoId, String? knowledgeTwoName, int? difficultyId, String? difficultyName, int? difficultyTwoId, String? difficultyTwoName, int? levelId, String? levelName, int? questionTypeId, bool? hasError, String? reviewStatus, DateTime? reviewUpdatedAt, String? reviewUpdatedBy, DateTime? llmSyncedAt, DateTime? importSyncedAt, String? issueTypeCode, String? issueSeverityCode, String? issueText, String? suggestedFixText, DateTime? issueUpdatedAt, DateTime? createdAt, DateTime? updatedAt, double? classConfidenceScore, double? subjectConfidenceScore, double? chapterConfidenceScore, double? topicConfidenceScore, double? objectiveConfidenceScore, double? insightConfidenceScore, double? abilityConfidenceScore, double? cognitiveConfidenceScore, double? knowledgeConfidenceScore, double? difficultyConfidenceScore, bool isImported, bool isDelete, List<OptionModel> options
});




}
/// @nodoc
class __$QuestionModelV2CopyWithImpl<$Res>
    implements _$QuestionModelV2CopyWith<$Res> {
  __$QuestionModelV2CopyWithImpl(this._self, this._then);

  final _QuestionModelV2 _self;
  final $Res Function(_QuestionModelV2) _then;

/// Create a copy of QuestionModelV2
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? questionId = null,Object? sourceId = freezed,Object? readingId = freezed,Object? order = null,Object? questionText = null,Object? questionTextLatex = null,Object? solutionText = null,Object? solutionTextLatex = null,Object? readingTitle = null,Object? readingText = null,Object? readingTextVn = null,Object? llmSolutionText = freezed,Object? llmSolutionTextLatex = freezed,Object? llmSolutionConfidenceScore = freezed,Object? readingTextLatex = freezed,Object? imageDescription = freezed,Object? answerKey = freezed,Object? correctAnswer = freezed,Object? answerDataFormatCode = freezed,Object? originalLanguageCode = freezed,Object? classId = freezed,Object? className = freezed,Object? subjectId = freezed,Object? subjectName = freezed,Object? chapterId = freezed,Object? chapterName = freezed,Object? topicId = freezed,Object? topicName = freezed,Object? objectiveId = freezed,Object? objectiveName = freezed,Object? insightId = freezed,Object? insightName = freezed,Object? abilityId = freezed,Object? abilityName = freezed,Object? abilityTwoId = freezed,Object? abilityTwoName = freezed,Object? cognitiveId = freezed,Object? cognitiveName = freezed,Object? cognitiveTwoId = freezed,Object? cognitiveTwoName = freezed,Object? knowledgeId = freezed,Object? knowledgeName = freezed,Object? knowledgeTwoId = freezed,Object? knowledgeTwoName = freezed,Object? difficultyId = freezed,Object? difficultyName = freezed,Object? difficultyTwoId = freezed,Object? difficultyTwoName = freezed,Object? levelId = freezed,Object? levelName = freezed,Object? questionTypeId = freezed,Object? hasError = freezed,Object? reviewStatus = freezed,Object? reviewUpdatedAt = freezed,Object? reviewUpdatedBy = freezed,Object? llmSyncedAt = freezed,Object? importSyncedAt = freezed,Object? issueTypeCode = freezed,Object? issueSeverityCode = freezed,Object? issueText = freezed,Object? suggestedFixText = freezed,Object? issueUpdatedAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? classConfidenceScore = freezed,Object? subjectConfidenceScore = freezed,Object? chapterConfidenceScore = freezed,Object? topicConfidenceScore = freezed,Object? objectiveConfidenceScore = freezed,Object? insightConfidenceScore = freezed,Object? abilityConfidenceScore = freezed,Object? cognitiveConfidenceScore = freezed,Object? knowledgeConfidenceScore = freezed,Object? difficultyConfidenceScore = freezed,Object? isImported = null,Object? isDelete = null,Object? options = null,}) {
  return _then(_QuestionModelV2(
questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as int,sourceId: freezed == sourceId ? _self.sourceId : sourceId // ignore: cast_nullable_to_non_nullable
as int?,readingId: freezed == readingId ? _self.readingId : readingId // ignore: cast_nullable_to_non_nullable
as int?,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,questionText: null == questionText ? _self.questionText : questionText // ignore: cast_nullable_to_non_nullable
as String,questionTextLatex: null == questionTextLatex ? _self.questionTextLatex : questionTextLatex // ignore: cast_nullable_to_non_nullable
as String,solutionText: null == solutionText ? _self.solutionText : solutionText // ignore: cast_nullable_to_non_nullable
as String,solutionTextLatex: null == solutionTextLatex ? _self.solutionTextLatex : solutionTextLatex // ignore: cast_nullable_to_non_nullable
as String,readingTitle: null == readingTitle ? _self.readingTitle : readingTitle // ignore: cast_nullable_to_non_nullable
as String,readingText: null == readingText ? _self.readingText : readingText // ignore: cast_nullable_to_non_nullable
as String,readingTextVn: null == readingTextVn ? _self.readingTextVn : readingTextVn // ignore: cast_nullable_to_non_nullable
as String,llmSolutionText: freezed == llmSolutionText ? _self.llmSolutionText : llmSolutionText // ignore: cast_nullable_to_non_nullable
as String?,llmSolutionTextLatex: freezed == llmSolutionTextLatex ? _self.llmSolutionTextLatex : llmSolutionTextLatex // ignore: cast_nullable_to_non_nullable
as String?,llmSolutionConfidenceScore: freezed == llmSolutionConfidenceScore ? _self.llmSolutionConfidenceScore : llmSolutionConfidenceScore // ignore: cast_nullable_to_non_nullable
as double?,readingTextLatex: freezed == readingTextLatex ? _self.readingTextLatex : readingTextLatex // ignore: cast_nullable_to_non_nullable
as String?,imageDescription: freezed == imageDescription ? _self.imageDescription : imageDescription // ignore: cast_nullable_to_non_nullable
as String?,answerKey: freezed == answerKey ? _self.answerKey : answerKey // ignore: cast_nullable_to_non_nullable
as String?,correctAnswer: freezed == correctAnswer ? _self.correctAnswer : correctAnswer // ignore: cast_nullable_to_non_nullable
as String?,answerDataFormatCode: freezed == answerDataFormatCode ? _self.answerDataFormatCode : answerDataFormatCode // ignore: cast_nullable_to_non_nullable
as String?,originalLanguageCode: freezed == originalLanguageCode ? _self.originalLanguageCode : originalLanguageCode // ignore: cast_nullable_to_non_nullable
as String?,classId: freezed == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as int?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,subjectId: freezed == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as int?,subjectName: freezed == subjectName ? _self.subjectName : subjectName // ignore: cast_nullable_to_non_nullable
as String?,chapterId: freezed == chapterId ? _self.chapterId : chapterId // ignore: cast_nullable_to_non_nullable
as int?,chapterName: freezed == chapterName ? _self.chapterName : chapterName // ignore: cast_nullable_to_non_nullable
as String?,topicId: freezed == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as int?,topicName: freezed == topicName ? _self.topicName : topicName // ignore: cast_nullable_to_non_nullable
as String?,objectiveId: freezed == objectiveId ? _self.objectiveId : objectiveId // ignore: cast_nullable_to_non_nullable
as int?,objectiveName: freezed == objectiveName ? _self.objectiveName : objectiveName // ignore: cast_nullable_to_non_nullable
as String?,insightId: freezed == insightId ? _self.insightId : insightId // ignore: cast_nullable_to_non_nullable
as int?,insightName: freezed == insightName ? _self.insightName : insightName // ignore: cast_nullable_to_non_nullable
as String?,abilityId: freezed == abilityId ? _self.abilityId : abilityId // ignore: cast_nullable_to_non_nullable
as int?,abilityName: freezed == abilityName ? _self.abilityName : abilityName // ignore: cast_nullable_to_non_nullable
as String?,abilityTwoId: freezed == abilityTwoId ? _self.abilityTwoId : abilityTwoId // ignore: cast_nullable_to_non_nullable
as int?,abilityTwoName: freezed == abilityTwoName ? _self.abilityTwoName : abilityTwoName // ignore: cast_nullable_to_non_nullable
as String?,cognitiveId: freezed == cognitiveId ? _self.cognitiveId : cognitiveId // ignore: cast_nullable_to_non_nullable
as int?,cognitiveName: freezed == cognitiveName ? _self.cognitiveName : cognitiveName // ignore: cast_nullable_to_non_nullable
as String?,cognitiveTwoId: freezed == cognitiveTwoId ? _self.cognitiveTwoId : cognitiveTwoId // ignore: cast_nullable_to_non_nullable
as int?,cognitiveTwoName: freezed == cognitiveTwoName ? _self.cognitiveTwoName : cognitiveTwoName // ignore: cast_nullable_to_non_nullable
as String?,knowledgeId: freezed == knowledgeId ? _self.knowledgeId : knowledgeId // ignore: cast_nullable_to_non_nullable
as int?,knowledgeName: freezed == knowledgeName ? _self.knowledgeName : knowledgeName // ignore: cast_nullable_to_non_nullable
as String?,knowledgeTwoId: freezed == knowledgeTwoId ? _self.knowledgeTwoId : knowledgeTwoId // ignore: cast_nullable_to_non_nullable
as int?,knowledgeTwoName: freezed == knowledgeTwoName ? _self.knowledgeTwoName : knowledgeTwoName // ignore: cast_nullable_to_non_nullable
as String?,difficultyId: freezed == difficultyId ? _self.difficultyId : difficultyId // ignore: cast_nullable_to_non_nullable
as int?,difficultyName: freezed == difficultyName ? _self.difficultyName : difficultyName // ignore: cast_nullable_to_non_nullable
as String?,difficultyTwoId: freezed == difficultyTwoId ? _self.difficultyTwoId : difficultyTwoId // ignore: cast_nullable_to_non_nullable
as int?,difficultyTwoName: freezed == difficultyTwoName ? _self.difficultyTwoName : difficultyTwoName // ignore: cast_nullable_to_non_nullable
as String?,levelId: freezed == levelId ? _self.levelId : levelId // ignore: cast_nullable_to_non_nullable
as int?,levelName: freezed == levelName ? _self.levelName : levelName // ignore: cast_nullable_to_non_nullable
as String?,questionTypeId: freezed == questionTypeId ? _self.questionTypeId : questionTypeId // ignore: cast_nullable_to_non_nullable
as int?,hasError: freezed == hasError ? _self.hasError : hasError // ignore: cast_nullable_to_non_nullable
as bool?,reviewStatus: freezed == reviewStatus ? _self.reviewStatus : reviewStatus // ignore: cast_nullable_to_non_nullable
as String?,reviewUpdatedAt: freezed == reviewUpdatedAt ? _self.reviewUpdatedAt : reviewUpdatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,reviewUpdatedBy: freezed == reviewUpdatedBy ? _self.reviewUpdatedBy : reviewUpdatedBy // ignore: cast_nullable_to_non_nullable
as String?,llmSyncedAt: freezed == llmSyncedAt ? _self.llmSyncedAt : llmSyncedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,importSyncedAt: freezed == importSyncedAt ? _self.importSyncedAt : importSyncedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,issueTypeCode: freezed == issueTypeCode ? _self.issueTypeCode : issueTypeCode // ignore: cast_nullable_to_non_nullable
as String?,issueSeverityCode: freezed == issueSeverityCode ? _self.issueSeverityCode : issueSeverityCode // ignore: cast_nullable_to_non_nullable
as String?,issueText: freezed == issueText ? _self.issueText : issueText // ignore: cast_nullable_to_non_nullable
as String?,suggestedFixText: freezed == suggestedFixText ? _self.suggestedFixText : suggestedFixText // ignore: cast_nullable_to_non_nullable
as String?,issueUpdatedAt: freezed == issueUpdatedAt ? _self.issueUpdatedAt : issueUpdatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,classConfidenceScore: freezed == classConfidenceScore ? _self.classConfidenceScore : classConfidenceScore // ignore: cast_nullable_to_non_nullable
as double?,subjectConfidenceScore: freezed == subjectConfidenceScore ? _self.subjectConfidenceScore : subjectConfidenceScore // ignore: cast_nullable_to_non_nullable
as double?,chapterConfidenceScore: freezed == chapterConfidenceScore ? _self.chapterConfidenceScore : chapterConfidenceScore // ignore: cast_nullable_to_non_nullable
as double?,topicConfidenceScore: freezed == topicConfidenceScore ? _self.topicConfidenceScore : topicConfidenceScore // ignore: cast_nullable_to_non_nullable
as double?,objectiveConfidenceScore: freezed == objectiveConfidenceScore ? _self.objectiveConfidenceScore : objectiveConfidenceScore // ignore: cast_nullable_to_non_nullable
as double?,insightConfidenceScore: freezed == insightConfidenceScore ? _self.insightConfidenceScore : insightConfidenceScore // ignore: cast_nullable_to_non_nullable
as double?,abilityConfidenceScore: freezed == abilityConfidenceScore ? _self.abilityConfidenceScore : abilityConfidenceScore // ignore: cast_nullable_to_non_nullable
as double?,cognitiveConfidenceScore: freezed == cognitiveConfidenceScore ? _self.cognitiveConfidenceScore : cognitiveConfidenceScore // ignore: cast_nullable_to_non_nullable
as double?,knowledgeConfidenceScore: freezed == knowledgeConfidenceScore ? _self.knowledgeConfidenceScore : knowledgeConfidenceScore // ignore: cast_nullable_to_non_nullable
as double?,difficultyConfidenceScore: freezed == difficultyConfidenceScore ? _self.difficultyConfidenceScore : difficultyConfidenceScore // ignore: cast_nullable_to_non_nullable
as double?,isImported: null == isImported ? _self.isImported : isImported // ignore: cast_nullable_to_non_nullable
as bool,isDelete: null == isDelete ? _self.isDelete : isDelete // ignore: cast_nullable_to_non_nullable
as bool,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,
  ));
}


}

// dart format on
