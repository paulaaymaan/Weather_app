// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'condition_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConditionModel _$ConditionModelFromJson(Map<String, dynamic> json) {
  return _ConditionModel.fromJson(json);
}

/// @nodoc
mixin _$ConditionModel {
  String get icon => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this ConditionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConditionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConditionModelCopyWith<ConditionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConditionModelCopyWith<$Res> {
  factory $ConditionModelCopyWith(
          ConditionModel value, $Res Function(ConditionModel) then) =
      _$ConditionModelCopyWithImpl<$Res, ConditionModel>;
  @useResult
  $Res call({String icon, int code, String description});
}

/// @nodoc
class _$ConditionModelCopyWithImpl<$Res, $Val extends ConditionModel>
    implements $ConditionModelCopyWith<$Res> {
  _$ConditionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConditionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? code = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConditionModelImplCopyWith<$Res>
    implements $ConditionModelCopyWith<$Res> {
  factory _$$ConditionModelImplCopyWith(_$ConditionModelImpl value,
          $Res Function(_$ConditionModelImpl) then) =
      __$$ConditionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String icon, int code, String description});
}

/// @nodoc
class __$$ConditionModelImplCopyWithImpl<$Res>
    extends _$ConditionModelCopyWithImpl<$Res, _$ConditionModelImpl>
    implements _$$ConditionModelImplCopyWith<$Res> {
  __$$ConditionModelImplCopyWithImpl(
      _$ConditionModelImpl _value, $Res Function(_$ConditionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConditionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? code = null,
    Object? description = null,
  }) {
    return _then(_$ConditionModelImpl(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConditionModelImpl implements _ConditionModel {
  const _$ConditionModelImpl(
      {required this.icon, required this.code, required this.description});

  factory _$ConditionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConditionModelImplFromJson(json);

  @override
  final String icon;
  @override
  final int code;
  @override
  final String description;

  @override
  String toString() {
    return 'ConditionModel(icon: $icon, code: $code, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConditionModelImpl &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, icon, code, description);

  /// Create a copy of ConditionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConditionModelImplCopyWith<_$ConditionModelImpl> get copyWith =>
      __$$ConditionModelImplCopyWithImpl<_$ConditionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConditionModelImplToJson(
      this,
    );
  }
}

abstract class _ConditionModel implements ConditionModel {
  const factory _ConditionModel(
      {required final String icon,
      required final int code,
      required final String description}) = _$ConditionModelImpl;

  factory _ConditionModel.fromJson(Map<String, dynamic> json) =
      _$ConditionModelImpl.fromJson;

  @override
  String get icon;
  @override
  int get code;
  @override
  String get description;

  /// Create a copy of ConditionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConditionModelImplCopyWith<_$ConditionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
