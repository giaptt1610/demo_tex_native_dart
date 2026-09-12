// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plan_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlanModel {

 int? get questionId; int? get planId; String? get planName; String? get content; String? get key; bool? get isCorrect; int? get order;// String? userAnswer,
 int? get planOrder; String? get userKey; String? get optionTextLatex; String? get optionCode; String? get optionText;
/// Create a copy of PlanModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlanModelCopyWith<PlanModel> get copyWith => _$PlanModelCopyWithImpl<PlanModel>(this as PlanModel, _$identity);

  /// Serializes this PlanModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlanModel&&(identical(other.questionId, questionId) || other.questionId == questionId)&&(identical(other.planId, planId) || other.planId == planId)&&(identical(other.planName, planName) || other.planName == planName)&&(identical(other.content, content) || other.content == content)&&(identical(other.key, key) || other.key == key)&&(identical(other.isCorrect, isCorrect) || other.isCorrect == isCorrect)&&(identical(other.order, order) || other.order == order)&&(identical(other.planOrder, planOrder) || other.planOrder == planOrder)&&(identical(other.userKey, userKey) || other.userKey == userKey)&&(identical(other.optionTextLatex, optionTextLatex) || other.optionTextLatex == optionTextLatex)&&(identical(other.optionCode, optionCode) || other.optionCode == optionCode)&&(identical(other.optionText, optionText) || other.optionText == optionText));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,questionId,planId,planName,content,key,isCorrect,order,planOrder,userKey,optionTextLatex,optionCode,optionText);

@override
String toString() {
  return 'PlanModel(questionId: $questionId, planId: $planId, planName: $planName, content: $content, key: $key, isCorrect: $isCorrect, order: $order, planOrder: $planOrder, userKey: $userKey, optionTextLatex: $optionTextLatex, optionCode: $optionCode, optionText: $optionText)';
}


}

/// @nodoc
abstract mixin class $PlanModelCopyWith<$Res>  {
  factory $PlanModelCopyWith(PlanModel value, $Res Function(PlanModel) _then) = _$PlanModelCopyWithImpl;
@useResult
$Res call({
 int? questionId, int? planId, String? planName, String? content, String? key, bool? isCorrect, int? order, int? planOrder, String? userKey, String? optionTextLatex, String? optionCode, String? optionText
});




}
/// @nodoc
class _$PlanModelCopyWithImpl<$Res>
    implements $PlanModelCopyWith<$Res> {
  _$PlanModelCopyWithImpl(this._self, this._then);

  final PlanModel _self;
  final $Res Function(PlanModel) _then;

/// Create a copy of PlanModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? questionId = freezed,Object? planId = freezed,Object? planName = freezed,Object? content = freezed,Object? key = freezed,Object? isCorrect = freezed,Object? order = freezed,Object? planOrder = freezed,Object? userKey = freezed,Object? optionTextLatex = freezed,Object? optionCode = freezed,Object? optionText = freezed,}) {
  return _then(_self.copyWith(
questionId: freezed == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as int?,planId: freezed == planId ? _self.planId : planId // ignore: cast_nullable_to_non_nullable
as int?,planName: freezed == planName ? _self.planName : planName // ignore: cast_nullable_to_non_nullable
as String?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String?,isCorrect: freezed == isCorrect ? _self.isCorrect : isCorrect // ignore: cast_nullable_to_non_nullable
as bool?,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int?,planOrder: freezed == planOrder ? _self.planOrder : planOrder // ignore: cast_nullable_to_non_nullable
as int?,userKey: freezed == userKey ? _self.userKey : userKey // ignore: cast_nullable_to_non_nullable
as String?,optionTextLatex: freezed == optionTextLatex ? _self.optionTextLatex : optionTextLatex // ignore: cast_nullable_to_non_nullable
as String?,optionCode: freezed == optionCode ? _self.optionCode : optionCode // ignore: cast_nullable_to_non_nullable
as String?,optionText: freezed == optionText ? _self.optionText : optionText // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PlanModel].
extension PlanModelPatterns on PlanModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlanModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlanModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlanModel value)  $default,){
final _that = this;
switch (_that) {
case _PlanModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlanModel value)?  $default,){
final _that = this;
switch (_that) {
case _PlanModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? questionId,  int? planId,  String? planName,  String? content,  String? key,  bool? isCorrect,  int? order,  int? planOrder,  String? userKey,  String? optionTextLatex,  String? optionCode,  String? optionText)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlanModel() when $default != null:
return $default(_that.questionId,_that.planId,_that.planName,_that.content,_that.key,_that.isCorrect,_that.order,_that.planOrder,_that.userKey,_that.optionTextLatex,_that.optionCode,_that.optionText);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? questionId,  int? planId,  String? planName,  String? content,  String? key,  bool? isCorrect,  int? order,  int? planOrder,  String? userKey,  String? optionTextLatex,  String? optionCode,  String? optionText)  $default,) {final _that = this;
switch (_that) {
case _PlanModel():
return $default(_that.questionId,_that.planId,_that.planName,_that.content,_that.key,_that.isCorrect,_that.order,_that.planOrder,_that.userKey,_that.optionTextLatex,_that.optionCode,_that.optionText);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? questionId,  int? planId,  String? planName,  String? content,  String? key,  bool? isCorrect,  int? order,  int? planOrder,  String? userKey,  String? optionTextLatex,  String? optionCode,  String? optionText)?  $default,) {final _that = this;
switch (_that) {
case _PlanModel() when $default != null:
return $default(_that.questionId,_that.planId,_that.planName,_that.content,_that.key,_that.isCorrect,_that.order,_that.planOrder,_that.userKey,_that.optionTextLatex,_that.optionCode,_that.optionText);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlanModel implements PlanModel {
  const _PlanModel({this.questionId, this.planId, this.planName, this.content, this.key, this.isCorrect, this.order, this.planOrder, this.userKey, this.optionTextLatex, this.optionCode, this.optionText});
  factory _PlanModel.fromJson(Map<String, dynamic> json) => _$PlanModelFromJson(json);

@override final  int? questionId;
@override final  int? planId;
@override final  String? planName;
@override final  String? content;
@override final  String? key;
@override final  bool? isCorrect;
@override final  int? order;
// String? userAnswer,
@override final  int? planOrder;
@override final  String? userKey;
@override final  String? optionTextLatex;
@override final  String? optionCode;
@override final  String? optionText;

/// Create a copy of PlanModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlanModelCopyWith<_PlanModel> get copyWith => __$PlanModelCopyWithImpl<_PlanModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlanModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlanModel&&(identical(other.questionId, questionId) || other.questionId == questionId)&&(identical(other.planId, planId) || other.planId == planId)&&(identical(other.planName, planName) || other.planName == planName)&&(identical(other.content, content) || other.content == content)&&(identical(other.key, key) || other.key == key)&&(identical(other.isCorrect, isCorrect) || other.isCorrect == isCorrect)&&(identical(other.order, order) || other.order == order)&&(identical(other.planOrder, planOrder) || other.planOrder == planOrder)&&(identical(other.userKey, userKey) || other.userKey == userKey)&&(identical(other.optionTextLatex, optionTextLatex) || other.optionTextLatex == optionTextLatex)&&(identical(other.optionCode, optionCode) || other.optionCode == optionCode)&&(identical(other.optionText, optionText) || other.optionText == optionText));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,questionId,planId,planName,content,key,isCorrect,order,planOrder,userKey,optionTextLatex,optionCode,optionText);

@override
String toString() {
  return 'PlanModel(questionId: $questionId, planId: $planId, planName: $planName, content: $content, key: $key, isCorrect: $isCorrect, order: $order, planOrder: $planOrder, userKey: $userKey, optionTextLatex: $optionTextLatex, optionCode: $optionCode, optionText: $optionText)';
}


}

/// @nodoc
abstract mixin class _$PlanModelCopyWith<$Res> implements $PlanModelCopyWith<$Res> {
  factory _$PlanModelCopyWith(_PlanModel value, $Res Function(_PlanModel) _then) = __$PlanModelCopyWithImpl;
@override @useResult
$Res call({
 int? questionId, int? planId, String? planName, String? content, String? key, bool? isCorrect, int? order, int? planOrder, String? userKey, String? optionTextLatex, String? optionCode, String? optionText
});




}
/// @nodoc
class __$PlanModelCopyWithImpl<$Res>
    implements _$PlanModelCopyWith<$Res> {
  __$PlanModelCopyWithImpl(this._self, this._then);

  final _PlanModel _self;
  final $Res Function(_PlanModel) _then;

/// Create a copy of PlanModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? questionId = freezed,Object? planId = freezed,Object? planName = freezed,Object? content = freezed,Object? key = freezed,Object? isCorrect = freezed,Object? order = freezed,Object? planOrder = freezed,Object? userKey = freezed,Object? optionTextLatex = freezed,Object? optionCode = freezed,Object? optionText = freezed,}) {
  return _then(_PlanModel(
questionId: freezed == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as int?,planId: freezed == planId ? _self.planId : planId // ignore: cast_nullable_to_non_nullable
as int?,planName: freezed == planName ? _self.planName : planName // ignore: cast_nullable_to_non_nullable
as String?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String?,isCorrect: freezed == isCorrect ? _self.isCorrect : isCorrect // ignore: cast_nullable_to_non_nullable
as bool?,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int?,planOrder: freezed == planOrder ? _self.planOrder : planOrder // ignore: cast_nullable_to_non_nullable
as int?,userKey: freezed == userKey ? _self.userKey : userKey // ignore: cast_nullable_to_non_nullable
as String?,optionTextLatex: freezed == optionTextLatex ? _self.optionTextLatex : optionTextLatex // ignore: cast_nullable_to_non_nullable
as String?,optionCode: freezed == optionCode ? _self.optionCode : optionCode // ignore: cast_nullable_to_non_nullable
as String?,optionText: freezed == optionText ? _self.optionText : optionText // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
