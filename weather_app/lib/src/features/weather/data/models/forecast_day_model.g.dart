// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_day_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForecastDayModelImpl _$$ForecastDayModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ForecastDayModelImpl(
      date: DateTime.parse(json['valid_date'] as String),
      maxTemp: (json['max_temp'] as num).toDouble(),
      minTemp: (json['min_temp'] as num).toDouble(),
      windSpeed: (json['wind_spd'] as num).toDouble(),
      humidity: (json['rh'] as num).toInt(),
      chanceOfPrecipitation: (json['pop'] as num).toInt(),
      uvIndex: (json['uv'] as num?)?.toDouble(),
      condition:
          ConditionModel.fromJson(json['weather'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ForecastDayModelImplToJson(
        _$ForecastDayModelImpl instance) =>
    <String, dynamic>{
      'valid_date': instance.date.toIso8601String(),
      'max_temp': instance.maxTemp,
      'min_temp': instance.minTemp,
      'wind_spd': instance.windSpeed,
      'rh': instance.humidity,
      'pop': instance.chanceOfPrecipitation,
      'uv': instance.uvIndex,
      'weather': instance.condition,
    };
