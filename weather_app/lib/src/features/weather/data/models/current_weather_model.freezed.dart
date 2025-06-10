// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CurrentWeatherModel _$CurrentWeatherModelFromJson(Map<String, dynamic> json) {
  return _CurrentWeatherModel.fromJson(json);
}

/// @nodoc
mixin _$CurrentWeatherModel {
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
  @JsonKey(name: 'aqi')
  int get aqi => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_name')
  String get cityName => throw _privateConstructorUsedError;
  @JsonKey(name: 'state_code')
  String? get stateCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_code')
  String? get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather')
  WeatherObjectModel get weatherData => throw _privateConstructorUsedError;

  /// Serializes this CurrentWeatherModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CurrentWeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CurrentWeatherModelCopyWith<CurrentWeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentWeatherModelCopyWith<$Res> {
  factory $CurrentWeatherModelCopyWith(
          CurrentWeatherModel value, $Res Function(CurrentWeatherModel) then) =
      _$CurrentWeatherModelCopyWithImpl<$Res, CurrentWeatherModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'temp') double temperature,
      @JsonKey(name: 'app_temp') double feelsLike,
      @JsonKey(name: 'rh') int humidity,
      @JsonKey(name: 'wind_spd') double windSpeed,
      @JsonKey(name: 'pres') double pressure,
      @JsonKey(name: 'uv') double uvIndex,
      @JsonKey(name: 'aqi') int aqi,
      @JsonKey(name: 'city_name') String cityName,
      @JsonKey(name: 'state_code') String? stateCode,
      @JsonKey(name: 'country_code') String? countryCode,
      @JsonKey(name: 'weather') WeatherObjectModel weatherData});

  $WeatherObjectModelCopyWith<$Res> get weatherData;
}

/// @nodoc
class _$CurrentWeatherModelCopyWithImpl<$Res, $Val extends CurrentWeatherModel>
    implements $CurrentWeatherModelCopyWith<$Res> {
  _$CurrentWeatherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CurrentWeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = null,
    Object? feelsLike = null,
    Object? humidity = null,
    Object? windSpeed = null,
    Object? pressure = null,
    Object? uvIndex = null,
    Object? aqi = null,
    Object? cityName = null,
    Object? stateCode = freezed,
    Object? countryCode = freezed,
    Object? weatherData = null,
  }) {
    return _then(_value.copyWith(
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
      aqi: null == aqi
          ? _value.aqi
          : aqi // ignore: cast_nullable_to_non_nullable
              as int,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      stateCode: freezed == stateCode
          ? _value.stateCode
          : stateCode // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      weatherData: null == weatherData
          ? _value.weatherData
          : weatherData // ignore: cast_nullable_to_non_nullable
              as WeatherObjectModel,
    ) as $Val);
  }

  /// Create a copy of CurrentWeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeatherObjectModelCopyWith<$Res> get weatherData {
    return $WeatherObjectModelCopyWith<$Res>(_value.weatherData, (value) {
      return _then(_value.copyWith(weatherData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CurrentWeatherModelImplCopyWith<$Res>
    implements $CurrentWeatherModelCopyWith<$Res> {
  factory _$$CurrentWeatherModelImplCopyWith(_$CurrentWeatherModelImpl value,
          $Res Function(_$CurrentWeatherModelImpl) then) =
      __$$CurrentWeatherModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'temp') double temperature,
      @JsonKey(name: 'app_temp') double feelsLike,
      @JsonKey(name: 'rh') int humidity,
      @JsonKey(name: 'wind_spd') double windSpeed,
      @JsonKey(name: 'pres') double pressure,
      @JsonKey(name: 'uv') double uvIndex,
      @JsonKey(name: 'aqi') int aqi,
      @JsonKey(name: 'city_name') String cityName,
      @JsonKey(name: 'state_code') String? stateCode,
      @JsonKey(name: 'country_code') String? countryCode,
      @JsonKey(name: 'weather') WeatherObjectModel weatherData});

  @override
  $WeatherObjectModelCopyWith<$Res> get weatherData;
}

/// @nodoc
class __$$CurrentWeatherModelImplCopyWithImpl<$Res>
    extends _$CurrentWeatherModelCopyWithImpl<$Res, _$CurrentWeatherModelImpl>
    implements _$$CurrentWeatherModelImplCopyWith<$Res> {
  __$$CurrentWeatherModelImplCopyWithImpl(_$CurrentWeatherModelImpl _value,
      $Res Function(_$CurrentWeatherModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CurrentWeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = null,
    Object? feelsLike = null,
    Object? humidity = null,
    Object? windSpeed = null,
    Object? pressure = null,
    Object? uvIndex = null,
    Object? aqi = null,
    Object? cityName = null,
    Object? stateCode = freezed,
    Object? countryCode = freezed,
    Object? weatherData = null,
  }) {
    return _then(_$CurrentWeatherModelImpl(
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
      aqi: null == aqi
          ? _value.aqi
          : aqi // ignore: cast_nullable_to_non_nullable
              as int,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      stateCode: freezed == stateCode
          ? _value.stateCode
          : stateCode // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      weatherData: null == weatherData
          ? _value.weatherData
          : weatherData // ignore: cast_nullable_to_non_nullable
              as WeatherObjectModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentWeatherModelImpl extends _CurrentWeatherModel {
  const _$CurrentWeatherModelImpl(
      {@JsonKey(name: 'temp') required this.temperature,
      @JsonKey(name: 'app_temp') required this.feelsLike,
      @JsonKey(name: 'rh') required this.humidity,
      @JsonKey(name: 'wind_spd') required this.windSpeed,
      @JsonKey(name: 'pres') required this.pressure,
      @JsonKey(name: 'uv') required this.uvIndex,
      @JsonKey(name: 'aqi') required this.aqi,
      @JsonKey(name: 'city_name') required this.cityName,
      @JsonKey(name: 'state_code') this.stateCode,
      @JsonKey(name: 'country_code') this.countryCode,
      @JsonKey(name: 'weather') required this.weatherData})
      : super._();

  factory _$CurrentWeatherModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentWeatherModelImplFromJson(json);

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
  @JsonKey(name: 'aqi')
  final int aqi;
  @override
  @JsonKey(name: 'city_name')
  final String cityName;
  @override
  @JsonKey(name: 'state_code')
  final String? stateCode;
  @override
  @JsonKey(name: 'country_code')
  final String? countryCode;
  @override
  @JsonKey(name: 'weather')
  final WeatherObjectModel weatherData;

  @override
  String toString() {
    return 'CurrentWeatherModel(temperature: $temperature, feelsLike: $feelsLike, humidity: $humidity, windSpeed: $windSpeed, pressure: $pressure, uvIndex: $uvIndex, aqi: $aqi, cityName: $cityName, stateCode: $stateCode, countryCode: $countryCode, weatherData: $weatherData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentWeatherModelImpl &&
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
            (identical(other.aqi, aqi) || other.aqi == aqi) &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName) &&
            (identical(other.stateCode, stateCode) ||
                other.stateCode == stateCode) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.weatherData, weatherData) ||
                other.weatherData == weatherData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      temperature,
      feelsLike,
      humidity,
      windSpeed,
      pressure,
      uvIndex,
      aqi,
      cityName,
      stateCode,
      countryCode,
      weatherData);

  /// Create a copy of CurrentWeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentWeatherModelImplCopyWith<_$CurrentWeatherModelImpl> get copyWith =>
      __$$CurrentWeatherModelImplCopyWithImpl<_$CurrentWeatherModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentWeatherModelImplToJson(
      this,
    );
  }
}

abstract class _CurrentWeatherModel extends CurrentWeatherModel {
  const factory _CurrentWeatherModel(
          {@JsonKey(name: 'temp') required final double temperature,
          @JsonKey(name: 'app_temp') required final double feelsLike,
          @JsonKey(name: 'rh') required final int humidity,
          @JsonKey(name: 'wind_spd') required final double windSpeed,
          @JsonKey(name: 'pres') required final double pressure,
          @JsonKey(name: 'uv') required final double uvIndex,
          @JsonKey(name: 'aqi') required final int aqi,
          @JsonKey(name: 'city_name') required final String cityName,
          @JsonKey(name: 'state_code') final String? stateCode,
          @JsonKey(name: 'country_code') final String? countryCode,
          @JsonKey(name: 'weather')
          required final WeatherObjectModel weatherData}) =
      _$CurrentWeatherModelImpl;
  const _CurrentWeatherModel._() : super._();

  factory _CurrentWeatherModel.fromJson(Map<String, dynamic> json) =
      _$CurrentWeatherModelImpl.fromJson;

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
  @JsonKey(name: 'aqi')
  int get aqi;
  @override
  @JsonKey(name: 'city_name')
  String get cityName;
  @override
  @JsonKey(name: 'state_code')
  String? get stateCode;
  @override
  @JsonKey(name: 'country_code')
  String? get countryCode;
  @override
  @JsonKey(name: 'weather')
  WeatherObjectModel get weatherData;

  /// Create a copy of CurrentWeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrentWeatherModelImplCopyWith<_$CurrentWeatherModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
