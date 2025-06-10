// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hourly_forecast_entry_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HourlyForecastEntryEntity {
  DateTime get dateTime =>
      throw _privateConstructorUsedError; // The exact date and time of the forecast
  double get temperature =>
      throw _privateConstructorUsedError; // Temperature in Celsius
  String get description =>
      throw _privateConstructorUsedError; // Weather description (e.g., "Partly cloudy")
  String get iconCode =>
      throw _privateConstructorUsedError; // Weatherbit's icon code (e.g., "c01d")
  double get feelsLike =>
      throw _privateConstructorUsedError; // Apparent temperature (feels like)
  int get humidity =>
      throw _privateConstructorUsedError; // Relative humidity (%)
  double get windSpeed =>
      throw _privateConstructorUsedError; // Wind speed (km/h)
  double get pressure => throw _privateConstructorUsedError; // Pressure (mb)
  double get uvIndex => throw _privateConstructorUsedError; // UV index
  int get chanceOfPrecipitation => throw _privateConstructorUsedError;

  /// Create a copy of HourlyForecastEntryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HourlyForecastEntryEntityCopyWith<HourlyForecastEntryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourlyForecastEntryEntityCopyWith<$Res> {
  factory $HourlyForecastEntryEntityCopyWith(HourlyForecastEntryEntity value,
          $Res Function(HourlyForecastEntryEntity) then) =
      _$HourlyForecastEntryEntityCopyWithImpl<$Res, HourlyForecastEntryEntity>;
  @useResult
  $Res call(
      {DateTime dateTime,
      double temperature,
      String description,
      String iconCode,
      double feelsLike,
      int humidity,
      double windSpeed,
      double pressure,
      double uvIndex,
      int chanceOfPrecipitation});
}

/// @nodoc
class _$HourlyForecastEntryEntityCopyWithImpl<$Res,
        $Val extends HourlyForecastEntryEntity>
    implements $HourlyForecastEntryEntityCopyWith<$Res> {
  _$HourlyForecastEntryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HourlyForecastEntryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? temperature = null,
    Object? description = null,
    Object? iconCode = null,
    Object? feelsLike = null,
    Object? humidity = null,
    Object? windSpeed = null,
    Object? pressure = null,
    Object? uvIndex = null,
    Object? chanceOfPrecipitation = null,
  }) {
    return _then(_value.copyWith(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      iconCode: null == iconCode
          ? _value.iconCode
          : iconCode // ignore: cast_nullable_to_non_nullable
              as String,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HourlyForecastEntryEntityImplCopyWith<$Res>
    implements $HourlyForecastEntryEntityCopyWith<$Res> {
  factory _$$HourlyForecastEntryEntityImplCopyWith(
          _$HourlyForecastEntryEntityImpl value,
          $Res Function(_$HourlyForecastEntryEntityImpl) then) =
      __$$HourlyForecastEntryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime dateTime,
      double temperature,
      String description,
      String iconCode,
      double feelsLike,
      int humidity,
      double windSpeed,
      double pressure,
      double uvIndex,
      int chanceOfPrecipitation});
}

/// @nodoc
class __$$HourlyForecastEntryEntityImplCopyWithImpl<$Res>
    extends _$HourlyForecastEntryEntityCopyWithImpl<$Res,
        _$HourlyForecastEntryEntityImpl>
    implements _$$HourlyForecastEntryEntityImplCopyWith<$Res> {
  __$$HourlyForecastEntryEntityImplCopyWithImpl(
      _$HourlyForecastEntryEntityImpl _value,
      $Res Function(_$HourlyForecastEntryEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of HourlyForecastEntryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? temperature = null,
    Object? description = null,
    Object? iconCode = null,
    Object? feelsLike = null,
    Object? humidity = null,
    Object? windSpeed = null,
    Object? pressure = null,
    Object? uvIndex = null,
    Object? chanceOfPrecipitation = null,
  }) {
    return _then(_$HourlyForecastEntryEntityImpl(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      iconCode: null == iconCode
          ? _value.iconCode
          : iconCode // ignore: cast_nullable_to_non_nullable
              as String,
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
    ));
  }
}

/// @nodoc

class _$HourlyForecastEntryEntityImpl extends _HourlyForecastEntryEntity {
  const _$HourlyForecastEntryEntityImpl(
      {required this.dateTime,
      required this.temperature,
      required this.description,
      required this.iconCode,
      required this.feelsLike,
      required this.humidity,
      required this.windSpeed,
      required this.pressure,
      required this.uvIndex,
      required this.chanceOfPrecipitation})
      : super._();

  @override
  final DateTime dateTime;
// The exact date and time of the forecast
  @override
  final double temperature;
// Temperature in Celsius
  @override
  final String description;
// Weather description (e.g., "Partly cloudy")
  @override
  final String iconCode;
// Weatherbit's icon code (e.g., "c01d")
  @override
  final double feelsLike;
// Apparent temperature (feels like)
  @override
  final int humidity;
// Relative humidity (%)
  @override
  final double windSpeed;
// Wind speed (km/h)
  @override
  final double pressure;
// Pressure (mb)
  @override
  final double uvIndex;
// UV index
  @override
  final int chanceOfPrecipitation;

  @override
  String toString() {
    return 'HourlyForecastEntryEntity(dateTime: $dateTime, temperature: $temperature, description: $description, iconCode: $iconCode, feelsLike: $feelsLike, humidity: $humidity, windSpeed: $windSpeed, pressure: $pressure, uvIndex: $uvIndex, chanceOfPrecipitation: $chanceOfPrecipitation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HourlyForecastEntryEntityImpl &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.iconCode, iconCode) ||
                other.iconCode == iconCode) &&
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
                other.chanceOfPrecipitation == chanceOfPrecipitation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      dateTime,
      temperature,
      description,
      iconCode,
      feelsLike,
      humidity,
      windSpeed,
      pressure,
      uvIndex,
      chanceOfPrecipitation);

  /// Create a copy of HourlyForecastEntryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HourlyForecastEntryEntityImplCopyWith<_$HourlyForecastEntryEntityImpl>
      get copyWith => __$$HourlyForecastEntryEntityImplCopyWithImpl<
          _$HourlyForecastEntryEntityImpl>(this, _$identity);
}

abstract class _HourlyForecastEntryEntity extends HourlyForecastEntryEntity {
  const factory _HourlyForecastEntryEntity(
          {required final DateTime dateTime,
          required final double temperature,
          required final String description,
          required final String iconCode,
          required final double feelsLike,
          required final int humidity,
          required final double windSpeed,
          required final double pressure,
          required final double uvIndex,
          required final int chanceOfPrecipitation}) =
      _$HourlyForecastEntryEntityImpl;
  const _HourlyForecastEntryEntity._() : super._();

  @override
  DateTime get dateTime; // The exact date and time of the forecast
  @override
  double get temperature; // Temperature in Celsius
  @override
  String get description; // Weather description (e.g., "Partly cloudy")
  @override
  String get iconCode; // Weatherbit's icon code (e.g., "c01d")
  @override
  double get feelsLike; // Apparent temperature (feels like)
  @override
  int get humidity; // Relative humidity (%)
  @override
  double get windSpeed; // Wind speed (km/h)
  @override
  double get pressure; // Pressure (mb)
  @override
  double get uvIndex; // UV index
  @override
  int get chanceOfPrecipitation;

  /// Create a copy of HourlyForecastEntryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HourlyForecastEntryEntityImplCopyWith<_$HourlyForecastEntryEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
