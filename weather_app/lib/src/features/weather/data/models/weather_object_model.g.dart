// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_object_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherObjectModelImpl _$$WeatherObjectModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherObjectModelImpl(
      icon: json['icon'] as String,
      code: (json['code'] as num).toInt(),
      description: json['description'] as String,
    );

Map<String, dynamic> _$$WeatherObjectModelImplToJson(
        _$WeatherObjectModelImpl instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'code': instance.code,
      'description': instance.description,
    };
