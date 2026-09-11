// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_preview_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SourcePreviewResult _$SourcePreviewResultFromJson(Map<String, dynamic> json) =>
    _SourcePreviewResult(
      sourceId: json['sourceId'] as String? ?? '',
      sourceFileUrl: json['sourceFileUrl'] as String? ?? '',
      rawMarkdown: json['rawMarkdown'] as String? ?? '',
      htmlPreview: json['htmlPreview'] as String? ?? '',
      debugPageImages: json['debugPageImages'] as String? ?? '',
      processingTimeMs: (json['processingTimeMs'] as num?)?.toInt(),
      reviewMessage: json['reviewMessage'] as String? ?? '',
      reviewStatus: json['reviewStatus'] as String? ?? '',
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$SourcePreviewResultToJson(
  _SourcePreviewResult instance,
) => <String, dynamic>{
  'sourceId': instance.sourceId,
  'sourceFileUrl': instance.sourceFileUrl,
  'rawMarkdown': instance.rawMarkdown,
  'htmlPreview': instance.htmlPreview,
  'debugPageImages': instance.debugPageImages,
  'processingTimeMs': instance.processingTimeMs,
  'reviewMessage': instance.reviewMessage,
  'reviewStatus': instance.reviewStatus,
  'updatedAt': instance.updatedAt?.toIso8601String(),
};
