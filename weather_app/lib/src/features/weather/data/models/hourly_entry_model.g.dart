// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly_entry_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HourlyEntryModelImpl _$$HourlyEntryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HourlyEntryModelImpl(
      timestamp: (json['ts'] as num).toInt(),
      datetimeStr: json['datetime'] as String,
      temperature: (json['temp'] as num).toDouble(),
      feelsLike: (json['app_temp'] as num).toDouble(),
      humidity: (json['rh'] as num).toInt(),
      windSpeed: (json['wind_spd'] as num).toDouble(),
      pressure: (json['pres'] as num).toDouble(),
      uvIndex: (json['uv'] as num).toDouble(),
      chanceOfPrecipitation: (json['pop'] as num).toInt(),
      condition:
          ConditionModel.fromJson(json['weather'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HourlyEntryModelImplToJson(
        _$HourlyEntryModelImpl instance) =>
    <String, dynamic>{
      'ts': instance.timestamp,
      'datetime': instance.datetimeStr,
      'temp': instance.temperature,
      'app_temp': instance.feelsLike,
      'rh': instance.humidity,
      'wind_spd': instance.windSpeed,
      'pres': instance.pressure,
      'uv': instance.uvIndex,
      'pop': instance.chanceOfPrecipitation,
      'weather': instance.condition,
    };
