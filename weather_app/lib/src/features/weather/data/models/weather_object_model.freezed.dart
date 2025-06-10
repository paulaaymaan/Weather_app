// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_object_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherObjectModel _$WeatherObjectModelFromJson(Map<String, dynamic> json) {
  return _WeatherObjectModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherObjectModel {
  String get icon => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this WeatherObjectModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeatherObjectModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherObjectModelCopyWith<WeatherObjectModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherObjectModelCopyWith<$Res> {
  factory $WeatherObjectModelCopyWith(
          WeatherObjectModel value, $Res Function(WeatherObjectModel) then) =
      _$WeatherObjectModelCopyWithImpl<$Res, WeatherObjectModel>;
  @useResult
  $Res call({String icon, int code, String description});
}

/// @nodoc
class _$WeatherObjectModelCopyWithImpl<$Res, $Val extends WeatherObjectModel>
    implements $WeatherObjectModelCopyWith<$Res> {
  _$WeatherObjectModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherObjectModel
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
abstract class _$$WeatherObjectModelImplCopyWith<$Res>
    implements $WeatherObjectModelCopyWith<$Res> {
  factory _$$WeatherObjectModelImplCopyWith(_$WeatherObjectModelImpl value,
          $Res Function(_$WeatherObjectModelImpl) then) =
      __$$WeatherObjectModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String icon, int code, String description});
}

/// @nodoc
class __$$WeatherObjectModelImplCopyWithImpl<$Res>
    extends _$WeatherObjectModelCopyWithImpl<$Res, _$WeatherObjectModelImpl>
    implements _$$WeatherObjectModelImplCopyWith<$Res> {
  __$$WeatherObjectModelImplCopyWithImpl(_$WeatherObjectModelImpl _value,
      $Res Function(_$WeatherObjectModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherObjectModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? code = null,
    Object? description = null,
  }) {
    return _then(_$WeatherObjectModelImpl(
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
class _$WeatherObjectModelImpl implements _WeatherObjectModel {
  const _$WeatherObjectModelImpl(
      {required this.icon, required this.code, required this.description});

  factory _$WeatherObjectModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherObjectModelImplFromJson(json);

  @override
  final String icon;
  @override
  final int code;
  @override
  final String description;

  @override
  String toString() {
    return 'WeatherObjectModel(icon: $icon, code: $code, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherObjectModelImpl &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, icon, code, description);

  /// Create a copy of WeatherObjectModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherObjectModelImplCopyWith<_$WeatherObjectModelImpl> get copyWith =>
      __$$WeatherObjectModelImplCopyWithImpl<_$WeatherObjectModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherObjectModelImplToJson(
      this,
    );
  }
}

abstract class _WeatherObjectModel implements WeatherObjectModel {
  const factory _WeatherObjectModel(
      {required final String icon,
      required final int code,
      required final String description}) = _$WeatherObjectModelImpl;

  factory _WeatherObjectModel.fromJson(Map<String, dynamic> json) =
      _$WeatherObjectModelImpl.fromJson;

  @override
  String get icon;
  @override
  int get code;
  @override
  String get description;

  /// Create a copy of WeatherObjectModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherObjectModelImplCopyWith<_$WeatherObjectModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
