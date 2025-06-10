// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hourly_entry_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HourlyEntryModel _$HourlyEntryModelFromJson(Map<String, dynamic> json) {
  return _HourlyEntryModel.fromJson(json);
}

/// @nodoc
mixin _$HourlyEntryModel {
  @JsonKey(name: 'ts')
  int get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'datetime')
  String get datetimeStr => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp')
  double get temperature => throw _privateConstructorUsedError;
  @JsonKey(name: 'app_temp')
  double get feelsLike => throw _privateConstructorUsedError;
  @JsonKey(name: 'rh')
  int get humidity => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_spd')
  double get windSpeed => throw _privateConstructorUsedError;
  @JsonKey(name: 'pres')
  double get pressure => throw _privateConstructorUsedError;
  @JsonKey(name: 'uv')
  double get uvIndex => throw _privateConstructorUsedError;
  @JsonKey(name: 'pop')
  int get chanceOfPrecipitation => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather')
  ConditionModel get condition => throw _privateConstructorUsedError;

  /// Serializes this HourlyEntryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HourlyEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HourlyEntryModelCopyWith<HourlyEntryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourlyEntryModelCopyWith<$Res> {
  factory $HourlyEntryModelCopyWith(
          HourlyEntryModel value, $Res Function(HourlyEntryModel) then) =
      _$HourlyEntryModelCopyWithImpl<$Res, HourlyEntryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ts') int timestamp,
      @JsonKey(name: 'datetime') String datetimeStr,
      @JsonKey(name: 'temp') double temperature,
      @JsonKey(name: 'app_temp') double feelsLike,
      @JsonKey(name: 'rh') int humidity,
      @JsonKey(name: 'wind_spd') double windSpeed,
      @JsonKey(name: 'pres') double pressure,
      @JsonKey(name: 'uv') double uvIndex,
      @JsonKey(name: 'pop') int chanceOfPrecipitation,
      @JsonKey(name: 'weather') ConditionModel condition});

  $ConditionModelCopyWith<$Res> get condition;
}

/// @nodoc
class _$HourlyEntryModelCopyWithImpl<$Res, $Val extends HourlyEntryModel>
    implements $HourlyEntryModelCopyWith<$Res> {
  _$HourlyEntryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HourlyEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? datetimeStr = null,
    Object? temperature = null,
    Object? feelsLike = null,
    Object? humidity = null,
    Object? windSpeed = null,
    Object? pressure = null,
    Object? uvIndex = null,
    Object? chanceOfPrecipitation = null,
    Object? condition = null,
  }) {
    return _then(_value.copyWith(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      datetimeStr: null == datetimeStr
          ? _value.datetimeStr
          : datetimeStr // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLike: null == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as double,
      uvIndex: null == uvIndex
          ? _value.uvIndex
          : uvIndex // ignore: cast_nullable_to_non_nullable
              as double,
      chanceOfPrecipitation: null == chanceOfPrecipitation
          ? _value.chanceOfPrecipitation
          : chanceOfPrecipitation // ignore: cast_nullable_to_non_nullable
              as int,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as ConditionModel,
    ) as $Val);
  }

  /// Create a copy of HourlyEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConditionModelCopyWith<$Res> get condition {
    return $ConditionModelCopyWith<$Res>(_value.condition, (value) {
      return _then(_value.copyWith(condition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HourlyEntryModelImplCopyWith<$Res>
    implements $HourlyEntryModelCopyWith<$Res> {
  factory _$$HourlyEntryModelImplCopyWith(_$HourlyEntryModelImpl value,
          $Res Function(_$HourlyEntryModelImpl) then) =
      __$$HourlyEntryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ts') int timestamp,
      @JsonKey(name: 'datetime') String datetimeStr,
      @JsonKey(name: 'temp') double temperature,
      @JsonKey(name: 'app_temp') double feelsLike,
      @JsonKey(name: 'rh') int humidity,
      @JsonKey(name: 'wind_spd') double windSpeed,
      @JsonKey(name: 'pres') double pressure,
      @JsonKey(name: 'uv') double uvIndex,
      @JsonKey(name: 'pop') int chanceOfPrecipitation,
      @JsonKey(name: 'weather') ConditionModel condition});

  @override
  $ConditionModelCopyWith<$Res> get condition;
}

/// @nodoc
class __$$HourlyEntryModelImplCopyWithImpl<$Res>
    extends _$HourlyEntryModelCopyWithImpl<$Res, _$HourlyEntryModelImpl>
    implements _$$HourlyEntryModelImplCopyWith<$Res> {
  __$$HourlyEntryModelImplCopyWithImpl(_$HourlyEntryModelImpl _value,
      $Res Function(_$HourlyEntryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of HourlyEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? datetimeStr = null,
    Object? temperature = null,
    Object? feelsLike = null,
    Object? humidity = null,
    Object? windSpeed = null,
    Object? pressure = null,
    Object? uvIndex = null,
    Object? chanceOfPrecipitation = null,
    Object? condition = null,
  }) {
    return _then(_$HourlyEntryModelImpl(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      datetimeStr: null == datetimeStr
          ? _value.datetimeStr
          : datetimeStr // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLike: null == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as double,
      uvIndex: null == uvIndex
          ? _value.uvIndex
          : uvIndex // ignore: cast_nullable_to_non_nullable
              as double,
      chanceOfPrecipitation: null == chanceOfPrecipitation
          ? _value.chanceOfPrecipitation
          : chanceOfPrecipitation // ignore: cast_nullable_to_non_nullable
              as int,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as ConditionModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HourlyEntryModelImpl extends _HourlyEntryModel {
  const _$HourlyEntryModelImpl(
      {@JsonKey(name: 'ts') required this.timestamp,
      @JsonKey(name: 'datetime') required this.datetimeStr,
      @JsonKey(name: 'temp') required this.temperature,
      @JsonKey(name: 'app_temp') required this.feelsLike,
      @JsonKey(name: 'rh') required this.humidity,
      @JsonKey(name: 'wind_spd') required this.windSpeed,
      @JsonKey(name: 'pres') required this.pressure,
      @JsonKey(name: 'uv') required this.uvIndex,
      @JsonKey(name: 'pop') required this.chanceOfPrecipitation,
      @JsonKey(name: 'weather') required this.condition})
      : super._();

  factory _$HourlyEntryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HourlyEntryModelImplFromJson(json);

  @override
  @JsonKey(name: 'ts')
  final int timestamp;
  @override
  @JsonKey(name: 'datetime')
  final String datetimeStr;
  @override
  @JsonKey(name: 'temp')
  final double temperature;
  @override
  @JsonKey(name: 'app_temp')
  final double feelsLike;
  @override
  @JsonKey(name: 'rh')
  final int humidity;
  @override
  @JsonKey(name: 'wind_spd')
  final double windSpeed;
  @override
  @JsonKey(name: 'pres')
  final double pressure;
  @override
  @JsonKey(name: 'uv')
  final double uvIndex;
  @override
  @JsonKey(name: 'pop')
  final int chanceOfPrecipitation;
  @override
  @JsonKey(name: 'weather')
  final ConditionModel condition;

  @override
  String toString() {
    return 'HourlyEntryModel(timestamp: $timestamp, datetimeStr: $datetimeStr, temperature: $temperature, feelsLike: $feelsLike, humidity: $humidity, windSpeed: $windSpeed, pressure: $pressure, uvIndex: $uvIndex, chanceOfPrecipitation: $chanceOfPrecipitation, condition: $condition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HourlyEntryModelImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.datetimeStr, datetimeStr) ||
                other.datetimeStr == datetimeStr) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.uvIndex, uvIndex) || other.uvIndex == uvIndex) &&
            (identical(other.chanceOfPrecipitation, chanceOfPrecipitation) ||
                other.chanceOfPrecipitation == chanceOfPrecipitation) &&
            (identical(other.condition, condition) ||
                other.condition == condition));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      timestamp,
      datetimeStr,
      temperature,
      feelsLike,
      humidity,
      windSpeed,
      pressure,
      uvIndex,
      chanceOfPrecipitation,
      condition);

  /// Create a copy of HourlyEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HourlyEntryModelImplCopyWith<_$HourlyEntryModelImpl> get copyWith =>
      __$$HourlyEntryModelImplCopyWithImpl<_$HourlyEntryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HourlyEntryModelImplToJson(
      this,
    );
  }
}

abstract class _HourlyEntryModel extends HourlyEntryModel {
  const factory _HourlyEntryModel(
          {@JsonKey(name: 'ts') required final int timestamp,
          @JsonKey(name: 'datetime') required final String datetimeStr,
          @JsonKey(name: 'temp') required final double temperature,
          @JsonKey(name: 'app_temp') required final double feelsLike,
          @JsonKey(name: 'rh') required final int humidity,
          @JsonKey(name: 'wind_spd') required final double windSpeed,
          @JsonKey(name: 'pres') required final double pressure,
          @JsonKey(name: 'uv') required final double uvIndex,
          @JsonKey(name: 'pop') required final int chanceOfPrecipitation,
          @JsonKey(name: 'weather') required final ConditionModel condition}) =
      _$HourlyEntryModelImpl;
  const _HourlyEntryModel._() : super._();

  factory _HourlyEntryModel.fromJson(Map<String, dynamic> json) =
      _$HourlyEntryModelImpl.fromJson;

  @override
  @JsonKey(name: 'ts')
  int get timestamp;
  @override
  @JsonKey(name: 'datetime')
  String get datetimeStr;
  @override
  @JsonKey(name: 'temp')
  double get temperature;
  @override
  @JsonKey(name: 'app_temp')
  double get feelsLike;
  @override
  @JsonKey(name: 'rh')
  int get humidity;
  @override
  @JsonKey(name: 'wind_spd')
  double get windSpeed;
  @override
  @JsonKey(name: 'pres')
  double get pressure;
  @override
  @JsonKey(name: 'uv')
  double get uvIndex;
  @override
  @JsonKey(name: 'pop')
  int get chanceOfPrecipitation;
  @override
  @JsonKey(name: 'weather')
  ConditionModel get condition;

  /// Create a copy of HourlyEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HourlyEntryModelImplCopyWith<_$HourlyEntryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
