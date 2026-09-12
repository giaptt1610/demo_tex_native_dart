// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'llm_question_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LlmQuestionDetailModel {

 QuestionModelV2? get question;
/// Create a copy of LlmQuestionDetailModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LlmQuestionDetailModelCopyWith<LlmQuestionDetailModel> get copyWith => _$LlmQuestionDetailModelCopyWithImpl<LlmQuestionDetailModel>(this as LlmQuestionDetailModel, _$identity);

  /// Serializes this LlmQuestionDetailModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LlmQuestionDetailModel&&(identical(other.question, question) || other.question == question));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,question);

@override
String toString() {
  return 'LlmQuestionDetailModel(question: $question)';
}


}

/// @nodoc
abstract mixin class $LlmQuestionDetailModelCopyWith<$Res>  {
  factory $LlmQuestionDetailModelCopyWith(LlmQuestionDetailModel value, $Res Function(LlmQuestionDetailModel) _then) = _$LlmQuestionDetailModelCopyWithImpl;
@useResult
$Res call({
 QuestionModelV2? question
});


$QuestionModelV2CopyWith<$Res>? get question;

}
/// @nodoc
class _$LlmQuestionDetailModelCopyWithImpl<$Res>
    implements $LlmQuestionDetailModelCopyWith<$Res> {
  _$LlmQuestionDetailModelCopyWithImpl(this._self, this._then);

  final LlmQuestionDetailModel _self;
  final $Res Function(LlmQuestionDetailModel) _then;

/// Create a copy of LlmQuestionDetailModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? question = freezed,}) {
  return _then(_self.copyWith(
question: freezed == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as QuestionModelV2?,
  ));
}
/// Create a copy of LlmQuestionDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QuestionModelV2CopyWith<$Res>? get question {
    if (_self.question == null) {
    return null;
  }

  return $QuestionModelV2CopyWith<$Res>(_self.question!, (value) {
    return _then(_self.copyWith(question: value));
  });
}
}


/// Adds pattern-matching-related methods to [LlmQuestionDetailModel].
extension LlmQuestionDetailModelPatterns on LlmQuestionDetailModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LlmQuestionDetailModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LlmQuestionDetailModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LlmQuestionDetailModel value)  $default,){
final _that = this;
switch (_that) {
case _LlmQuestionDetailModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LlmQuestionDetailModel value)?  $default,){
final _that = this;
switch (_that) {
case _LlmQuestionDetailModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( QuestionModelV2? question)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LlmQuestionDetailModel() when $default != null:
return $default(_that.question);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( QuestionModelV2? question)  $default,) {final _that = this;
switch (_that) {
case _LlmQuestionDetailModel():
return $default(_that.question);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( QuestionModelV2? question)?  $default,) {final _that = this;
switch (_that) {
case _LlmQuestionDetailModel() when $default != null:
return $default(_that.question);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LlmQuestionDetailModel implements LlmQuestionDetailModel {
  const _LlmQuestionDetailModel({this.question});
  factory _LlmQuestionDetailModel.fromJson(Map<String, dynamic> json) => _$LlmQuestionDetailModelFromJson(json);

@override final  QuestionModelV2? question;

/// Create a copy of LlmQuestionDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LlmQuestionDetailModelCopyWith<_LlmQuestionDetailModel> get copyWith => __$LlmQuestionDetailModelCopyWithImpl<_LlmQuestionDetailModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LlmQuestionDetailModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LlmQuestionDetailModel&&(identical(other.question, question) || other.question == question));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,question);

@override
String toString() {
  return 'LlmQuestionDetailModel(question: $question)';
}


}

/// @nodoc
abstract mixin class _$LlmQuestionDetailModelCopyWith<$Res> implements $LlmQuestionDetailModelCopyWith<$Res> {
  factory _$LlmQuestionDetailModelCopyWith(_LlmQuestionDetailModel value, $Res Function(_LlmQuestionDetailModel) _then) = __$LlmQuestionDetailModelCopyWithImpl;
@override @useResult
$Res call({
 QuestionModelV2? question
});


@override $QuestionModelV2CopyWith<$Res>? get question;

}
/// @nodoc
class __$LlmQuestionDetailModelCopyWithImpl<$Res>
    implements _$LlmQuestionDetailModelCopyWith<$Res> {
  __$LlmQuestionDetailModelCopyWithImpl(this._self, this._then);

  final _LlmQuestionDetailModel _self;
  final $Res Function(_LlmQuestionDetailModel) _then;

/// Create a copy of LlmQuestionDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? question = freezed,}) {
  return _then(_LlmQuestionDetailModel(
question: freezed == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as QuestionModelV2?,
  ));
}

/// Create a copy of LlmQuestionDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QuestionModelV2CopyWith<$Res>? get question {
    if (_self.question == null) {
    return null;
  }

  return $QuestionModelV2CopyWith<$Res>(_self.question!, (value) {
    return _then(_self.copyWith(question: value));
  });
}
}

// dart format on
