import 'package:freezed_annotation/freezed_annotation.dart';

part 'source_preview_result.freezed.dart';
part 'source_preview_result.g.dart';

@freezed
abstract class SourcePreviewResult with _$SourcePreviewResult {
  const factory SourcePreviewResult({
    @Default('') String? sourceId,
    @Default('') String? sourceFileUrl,
    @Default('') String? rawMarkdown,
    @Default('') String? htmlPreview,
    @Default('') String? debugPageImages,
    int? processingTimeMs,
    @Default('') String reviewMessage,
    @Default('') String reviewStatus,
    DateTime? updatedAt,
  }) = _SourcePreviewResult;

  factory SourcePreviewResult.fromJson(Map<String, dynamic> json) => _$SourcePreviewResultFromJson(json);
}
