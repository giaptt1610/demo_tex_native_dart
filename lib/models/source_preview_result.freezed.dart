// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'source_preview_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SourcePreviewResult {

 String? get sourceId; String? get sourceFileUrl; String? get rawMarkdown; String? get htmlPreview; String? get debugPageImages; int? get processingTimeMs; String get reviewMessage; String get reviewStatus; DateTime? get updatedAt;
/// Create a copy of SourcePreviewResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SourcePreviewResultCopyWith<SourcePreviewResult> get copyWith => _$SourcePreviewResultCopyWithImpl<SourcePreviewResult>(this as SourcePreviewResult, _$identity);

  /// Serializes this SourcePreviewResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SourcePreviewResult&&(identical(other.sourceId, sourceId) || other.sourceId == sourceId)&&(identical(other.sourceFileUrl, sourceFileUrl) || other.sourceFileUrl == sourceFileUrl)&&(identical(other.rawMarkdown, rawMarkdown) || other.rawMarkdown == rawMarkdown)&&(identical(other.htmlPreview, htmlPreview) || other.htmlPreview == htmlPreview)&&(identical(other.debugPageImages, debugPageImages) || other.debugPageImages == debugPageImages)&&(identical(other.processingTimeMs, processingTimeMs) || other.processingTimeMs == processingTimeMs)&&(identical(other.reviewMessage, reviewMessage) || other.reviewMessage == reviewMessage)&&(identical(other.reviewStatus, reviewStatus) || other.reviewStatus == reviewStatus)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sourceId,sourceFileUrl,rawMarkdown,htmlPreview,debugPageImages,processingTimeMs,reviewMessage,reviewStatus,updatedAt);

@override
String toString() {
  return 'SourcePreviewResult(sourceId: $sourceId, sourceFileUrl: $sourceFileUrl, rawMarkdown: $rawMarkdown, htmlPreview: $htmlPreview, debugPageImages: $debugPageImages, processingTimeMs: $processingTimeMs, reviewMessage: $reviewMessage, reviewStatus: $reviewStatus, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $SourcePreviewResultCopyWith<$Res>  {
  factory $SourcePreviewResultCopyWith(SourcePreviewResult value, $Res Function(SourcePreviewResult) _then) = _$SourcePreviewResultCopyWithImpl;
@useResult
$Res call({
 String? sourceId, String? sourceFileUrl, String? rawMarkdown, String? htmlPreview, String? debugPageImages, int? processingTimeMs, String reviewMessage, String reviewStatus, DateTime? updatedAt
});




}
/// @nodoc
class _$SourcePreviewResultCopyWithImpl<$Res>
    implements $SourcePreviewResultCopyWith<$Res> {
  _$SourcePreviewResultCopyWithImpl(this._self, this._then);

  final SourcePreviewResult _self;
  final $Res Function(SourcePreviewResult) _then;

/// Create a copy of SourcePreviewResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sourceId = freezed,Object? sourceFileUrl = freezed,Object? rawMarkdown = freezed,Object? htmlPreview = freezed,Object? debugPageImages = freezed,Object? processingTimeMs = freezed,Object? reviewMessage = null,Object? reviewStatus = null,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
sourceId: freezed == sourceId ? _self.sourceId : sourceId // ignore: cast_nullable_to_non_nullable
as String?,sourceFileUrl: freezed == sourceFileUrl ? _self.sourceFileUrl : sourceFileUrl // ignore: cast_nullable_to_non_nullable
as String?,rawMarkdown: freezed == rawMarkdown ? _self.rawMarkdown : rawMarkdown // ignore: cast_nullable_to_non_nullable
as String?,htmlPreview: freezed == htmlPreview ? _self.htmlPreview : htmlPreview // ignore: cast_nullable_to_non_nullable
as String?,debugPageImages: freezed == debugPageImages ? _self.debugPageImages : debugPageImages // ignore: cast_nullable_to_non_nullable
as String?,processingTimeMs: freezed == processingTimeMs ? _self.processingTimeMs : processingTimeMs // ignore: cast_nullable_to_non_nullable
as int?,reviewMessage: null == reviewMessage ? _self.reviewMessage : reviewMessage // ignore: cast_nullable_to_non_nullable
as String,reviewStatus: null == reviewStatus ? _self.reviewStatus : reviewStatus // ignore: cast_nullable_to_non_nullable
as String,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [SourcePreviewResult].
extension SourcePreviewResultPatterns on SourcePreviewResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SourcePreviewResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SourcePreviewResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SourcePreviewResult value)  $default,){
final _that = this;
switch (_that) {
case _SourcePreviewResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SourcePreviewResult value)?  $default,){
final _that = this;
switch (_that) {
case _SourcePreviewResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? sourceId,  String? sourceFileUrl,  String? rawMarkdown,  String? htmlPreview,  String? debugPageImages,  int? processingTimeMs,  String reviewMessage,  String reviewStatus,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SourcePreviewResult() when $default != null:
return $default(_that.sourceId,_that.sourceFileUrl,_that.rawMarkdown,_that.htmlPreview,_that.debugPageImages,_that.processingTimeMs,_that.reviewMessage,_that.reviewStatus,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? sourceId,  String? sourceFileUrl,  String? rawMarkdown,  String? htmlPreview,  String? debugPageImages,  int? processingTimeMs,  String reviewMessage,  String reviewStatus,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _SourcePreviewResult():
return $default(_that.sourceId,_that.sourceFileUrl,_that.rawMarkdown,_that.htmlPreview,_that.debugPageImages,_that.processingTimeMs,_that.reviewMessage,_that.reviewStatus,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? sourceId,  String? sourceFileUrl,  String? rawMarkdown,  String? htmlPreview,  String? debugPageImages,  int? processingTimeMs,  String reviewMessage,  String reviewStatus,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _SourcePreviewResult() when $default != null:
return $default(_that.sourceId,_that.sourceFileUrl,_that.rawMarkdown,_that.htmlPreview,_that.debugPageImages,_that.processingTimeMs,_that.reviewMessage,_that.reviewStatus,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SourcePreviewResult implements SourcePreviewResult {
  const _SourcePreviewResult({this.sourceId = '', this.sourceFileUrl = '', this.rawMarkdown = '', this.htmlPreview = '', this.debugPageImages = '', this.processingTimeMs, this.reviewMessage = '', this.reviewStatus = '', this.updatedAt});
  factory _SourcePreviewResult.fromJson(Map<String, dynamic> json) => _$SourcePreviewResultFromJson(json);

@override@JsonKey() final  String? sourceId;
@override@JsonKey() final  String? sourceFileUrl;
@override@JsonKey() final  String? rawMarkdown;
@override@JsonKey() final  String? htmlPreview;
@override@JsonKey() final  String? debugPageImages;
@override final  int? processingTimeMs;
@override@JsonKey() final  String reviewMessage;
@override@JsonKey() final  String reviewStatus;
@override final  DateTime? updatedAt;

/// Create a copy of SourcePreviewResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SourcePreviewResultCopyWith<_SourcePreviewResult> get copyWith => __$SourcePreviewResultCopyWithImpl<_SourcePreviewResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SourcePreviewResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SourcePreviewResult&&(identical(other.sourceId, sourceId) || other.sourceId == sourceId)&&(identical(other.sourceFileUrl, sourceFileUrl) || other.sourceFileUrl == sourceFileUrl)&&(identical(other.rawMarkdown, rawMarkdown) || other.rawMarkdown == rawMarkdown)&&(identical(other.htmlPreview, htmlPreview) || other.htmlPreview == htmlPreview)&&(identical(other.debugPageImages, debugPageImages) || other.debugPageImages == debugPageImages)&&(identical(other.processingTimeMs, processingTimeMs) || other.processingTimeMs == processingTimeMs)&&(identical(other.reviewMessage, reviewMessage) || other.reviewMessage == reviewMessage)&&(identical(other.reviewStatus, reviewStatus) || other.reviewStatus == reviewStatus)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sourceId,sourceFileUrl,rawMarkdown,htmlPreview,debugPageImages,processingTimeMs,reviewMessage,reviewStatus,updatedAt);

@override
String toString() {
  return 'SourcePreviewResult(sourceId: $sourceId, sourceFileUrl: $sourceFileUrl, rawMarkdown: $rawMarkdown, htmlPreview: $htmlPreview, debugPageImages: $debugPageImages, processingTimeMs: $processingTimeMs, reviewMessage: $reviewMessage, reviewStatus: $reviewStatus, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$SourcePreviewResultCopyWith<$Res> implements $SourcePreviewResultCopyWith<$Res> {
  factory _$SourcePreviewResultCopyWith(_SourcePreviewResult value, $Res Function(_SourcePreviewResult) _then) = __$SourcePreviewResultCopyWithImpl;
@override @useResult
$Res call({
 String? sourceId, String? sourceFileUrl, String? rawMarkdown, String? htmlPreview, String? debugPageImages, int? processingTimeMs, String reviewMessage, String reviewStatus, DateTime? updatedAt
});




}
/// @nodoc
class __$SourcePreviewResultCopyWithImpl<$Res>
    implements _$SourcePreviewResultCopyWith<$Res> {
  __$SourcePreviewResultCopyWithImpl(this._self, this._then);

  final _SourcePreviewResult _self;
  final $Res Function(_SourcePreviewResult) _then;

/// Create a copy of SourcePreviewResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sourceId = freezed,Object? sourceFileUrl = freezed,Object? rawMarkdown = freezed,Object? htmlPreview = freezed,Object? debugPageImages = freezed,Object? processingTimeMs = freezed,Object? reviewMessage = null,Object? reviewStatus = null,Object? updatedAt = freezed,}) {
  return _then(_SourcePreviewResult(
sourceId: freezed == sourceId ? _self.sourceId : sourceId // ignore: cast_nullable_to_non_nullable
as String?,sourceFileUrl: freezed == sourceFileUrl ? _self.sourceFileUrl : sourceFileUrl // ignore: cast_nullable_to_non_nullable
as String?,rawMarkdown: freezed == rawMarkdown ? _self.rawMarkdown : rawMarkdown // ignore: cast_nullable_to_non_nullable
as String?,htmlPreview: freezed == htmlPreview ? _self.htmlPreview : htmlPreview // ignore: cast_nullable_to_non_nullable
as String?,debugPageImages: freezed == debugPageImages ? _self.debugPageImages : debugPageImages // ignore: cast_nullable_to_non_nullable
as String?,processingTimeMs: freezed == processingTimeMs ? _self.processingTimeMs : processingTimeMs // ignore: cast_nullable_to_non_nullable
as int?,reviewMessage: null == reviewMessage ? _self.reviewMessage : reviewMessage // ignore: cast_nullable_to_non_nullable
as String,reviewStatus: null == reviewStatus ? _self.reviewStatus : reviewStatus // ignore: cast_nullable_to_non_nullable
as String,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
