// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentWeatherModelImpl _$$CurrentWeatherModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrentWeatherModelImpl(
      temperature: (json['temp'] as num).toDouble(),
      feelsLike: (json['app_temp'] as num).toDouble(),
      humidity: (json['rh'] as num).toInt(),
      windSpeed: (json['wind_spd'] as num).toDouble(),
      pressure: (json['pres'] as num).toDouble(),
      uvIndex: (json['uv'] as num).toDouble(),
      aqi: (json['aqi'] as num).toInt(),
      cityName: json['city_name'] as String,
      stateCode: json['state_code'] as String?,
      countryCode: json['country_code'] as String?,
      weatherData:
          WeatherObjectModel.fromJson(json['weather'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CurrentWeatherModelImplToJson(
        _$CurrentWeatherModelImpl instance) =>
    <String, dynamic>{
      'temp': instance.temperature,
      'app_temp': instance.feelsLike,
      'rh': instance.humidity,
      'wind_spd': instance.windSpeed,
      'pres': instance.pressure,
      'uv': instance.uvIndex,
      'aqi': instance.aqi,
      'city_name': instance.cityName,
      'state_code': instance.stateCode,
      'country_code': instance.countryCode,
      'weather': instance.weatherData,
    };
