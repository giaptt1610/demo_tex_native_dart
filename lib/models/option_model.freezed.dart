// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'option_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OptionModel {

 int? get questionId; int? get optionId; String? get optionCode; String? get optionSlotCode; String? get optionText; String? get optionTextLatex; bool? get isCorrect; int? get optionOrder;
/// Create a copy of OptionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OptionModelCopyWith<OptionModel> get copyWith => _$OptionModelCopyWithImpl<OptionModel>(this as OptionModel, _$identity);

  /// Serializes this OptionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OptionModel&&(identical(other.questionId, questionId) || other.questionId == questionId)&&(identical(other.optionId, optionId) || other.optionId == optionId)&&(identical(other.optionCode, optionCode) || other.optionCode == optionCode)&&(identical(other.optionSlotCode, optionSlotCode) || other.optionSlotCode == optionSlotCode)&&(identical(other.optionText, optionText) || other.optionText == optionText)&&(identical(other.optionTextLatex, optionTextLatex) || other.optionTextLatex == optionTextLatex)&&(identical(other.isCorrect, isCorrect) || other.isCorrect == isCorrect)&&(identical(other.optionOrder, optionOrder) || other.optionOrder == optionOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,questionId,optionId,optionCode,optionSlotCode,optionText,optionTextLatex,isCorrect,optionOrder);

@override
String toString() {
  return 'OptionModel(questionId: $questionId, optionId: $optionId, optionCode: $optionCode, optionSlotCode: $optionSlotCode, optionText: $optionText, optionTextLatex: $optionTextLatex, isCorrect: $isCorrect, optionOrder: $optionOrder)';
}


}

/// @nodoc
abstract mixin class $OptionModelCopyWith<$Res>  {
  factory $OptionModelCopyWith(OptionModel value, $Res Function(OptionModel) _then) = _$OptionModelCopyWithImpl;
@useResult
$Res call({
 int? questionId, int? optionId, String? optionCode, String? optionSlotCode, String? optionText, String? optionTextLatex, bool? isCorrect, int? optionOrder
});




}
/// @nodoc
class _$OptionModelCopyWithImpl<$Res>
    implements $OptionModelCopyWith<$Res> {
  _$OptionModelCopyWithImpl(this._self, this._then);

  final OptionModel _self;
  final $Res Function(OptionModel) _then;

/// Create a copy of OptionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? questionId = freezed,Object? optionId = freezed,Object? optionCode = freezed,Object? optionSlotCode = freezed,Object? optionText = freezed,Object? optionTextLatex = freezed,Object? isCorrect = freezed,Object? optionOrder = freezed,}) {
  return _then(_self.copyWith(
questionId: freezed == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as int?,optionId: freezed == optionId ? _self.optionId : optionId // ignore: cast_nullable_to_non_nullable
as int?,optionCode: freezed == optionCode ? _self.optionCode : optionCode // ignore: cast_nullable_to_non_nullable
as String?,optionSlotCode: freezed == optionSlotCode ? _self.optionSlotCode : optionSlotCode // ignore: cast_nullable_to_non_nullable
as String?,optionText: freezed == optionText ? _self.optionText : optionText // ignore: cast_nullable_to_non_nullable
as String?,optionTextLatex: freezed == optionTextLatex ? _self.optionTextLatex : optionTextLatex // ignore: cast_nullable_to_non_nullable
as String?,isCorrect: freezed == isCorrect ? _self.isCorrect : isCorrect // ignore: cast_nullable_to_non_nullable
as bool?,optionOrder: freezed == optionOrder ? _self.optionOrder : optionOrder // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [OptionModel].
extension OptionModelPatterns on OptionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OptionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OptionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OptionModel value)  $default,){
final _that = this;
switch (_that) {
case _OptionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OptionModel value)?  $default,){
final _that = this;
switch (_that) {
case _OptionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? questionId,  int? optionId,  String? optionCode,  String? optionSlotCode,  String? optionText,  String? optionTextLatex,  bool? isCorrect,  int? optionOrder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OptionModel() when $default != null:
return $default(_that.questionId,_that.optionId,_that.optionCode,_that.optionSlotCode,_that.optionText,_that.optionTextLatex,_that.isCorrect,_that.optionOrder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? questionId,  int? optionId,  String? optionCode,  String? optionSlotCode,  String? optionText,  String? optionTextLatex,  bool? isCorrect,  int? optionOrder)  $default,) {final _that = this;
switch (_that) {
case _OptionModel():
return $default(_that.questionId,_that.optionId,_that.optionCode,_that.optionSlotCode,_that.optionText,_that.optionTextLatex,_that.isCorrect,_that.optionOrder);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? questionId,  int? optionId,  String? optionCode,  String? optionSlotCode,  String? optionText,  String? optionTextLatex,  bool? isCorrect,  int? optionOrder)?  $default,) {final _that = this;
switch (_that) {
case _OptionModel() when $default != null:
return $default(_that.questionId,_that.optionId,_that.optionCode,_that.optionSlotCode,_that.optionText,_that.optionTextLatex,_that.isCorrect,_that.optionOrder);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OptionModel implements OptionModel {
  const _OptionModel({this.questionId, this.optionId, this.optionCode, this.optionSlotCode, this.optionText, this.optionTextLatex, this.isCorrect, this.optionOrder});
  factory _OptionModel.fromJson(Map<String, dynamic> json) => _$OptionModelFromJson(json);

@override final  int? questionId;
@override final  int? optionId;
@override final  String? optionCode;
@override final  String? optionSlotCode;
@override final  String? optionText;
@override final  String? optionTextLatex;
@override final  bool? isCorrect;
@override final  int? optionOrder;

/// Create a copy of OptionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OptionModelCopyWith<_OptionModel> get copyWith => __$OptionModelCopyWithImpl<_OptionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OptionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OptionModel&&(identical(other.questionId, questionId) || other.questionId == questionId)&&(identical(other.optionId, optionId) || other.optionId == optionId)&&(identical(other.optionCode, optionCode) || other.optionCode == optionCode)&&(identical(other.optionSlotCode, optionSlotCode) || other.optionSlotCode == optionSlotCode)&&(identical(other.optionText, optionText) || other.optionText == optionText)&&(identical(other.optionTextLatex, optionTextLatex) || other.optionTextLatex == optionTextLatex)&&(identical(other.isCorrect, isCorrect) || other.isCorrect == isCorrect)&&(identical(other.optionOrder, optionOrder) || other.optionOrder == optionOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,questionId,optionId,optionCode,optionSlotCode,optionText,optionTextLatex,isCorrect,optionOrder);

@override
String toString() {
  return 'OptionModel(questionId: $questionId, optionId: $optionId, optionCode: $optionCode, optionSlotCode: $optionSlotCode, optionText: $optionText, optionTextLatex: $optionTextLatex, isCorrect: $isCorrect, optionOrder: $optionOrder)';
}


}

/// @nodoc
abstract mixin class _$OptionModelCopyWith<$Res> implements $OptionModelCopyWith<$Res> {
  factory _$OptionModelCopyWith(_OptionModel value, $Res Function(_OptionModel) _then) = __$OptionModelCopyWithImpl;
@override @useResult
$Res call({
 int? questionId, int? optionId, String? optionCode, String? optionSlotCode, String? optionText, String? optionTextLatex, bool? isCorrect, int? optionOrder
});




}
/// @nodoc
class __$OptionModelCopyWithImpl<$Res>
    implements _$OptionModelCopyWith<$Res> {
  __$OptionModelCopyWithImpl(this._self, this._then);

  final _OptionModel _self;
  final $Res Function(_OptionModel) _then;

/// Create a copy of OptionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? questionId = freezed,Object? optionId = freezed,Object? optionCode = freezed,Object? optionSlotCode = freezed,Object? optionText = freezed,Object? optionTextLatex = freezed,Object? isCorrect = freezed,Object? optionOrder = freezed,}) {
  return _then(_OptionModel(
questionId: freezed == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as int?,optionId: freezed == optionId ? _self.optionId : optionId // ignore: cast_nullable_to_non_nullable
as int?,optionCode: freezed == optionCode ? _self.optionCode : optionCode // ignore: cast_nullable_to_non_nullable
as String?,optionSlotCode: freezed == optionSlotCode ? _self.optionSlotCode : optionSlotCode // ignore: cast_nullable_to_non_nullable
as String?,optionText: freezed == optionText ? _self.optionText : optionText // ignore: cast_nullable_to_non_nullable
as String?,optionTextLatex: freezed == optionTextLatex ? _self.optionTextLatex : optionTextLatex // ignore: cast_nullable_to_non_nullable
as String?,isCorrect: freezed == isCorrect ? _self.isCorrect : isCorrect // ignore: cast_nullable_to_non_nullable
as bool?,optionOrder: freezed == optionOrder ? _self.optionOrder : optionOrder // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
