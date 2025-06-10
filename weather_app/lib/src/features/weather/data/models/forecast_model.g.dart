// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForecastModel _$ForecastModelFromJson(Map<String, dynamic> json) =>
    ForecastModel(
      forecastEntries: (json['data'] as List<dynamic>)
          .map((e) => ForecastDayModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ForecastModelToJson(ForecastModel instance) =>
    <String, dynamic>{
      'data': instance.forecastEntries.map((e) => e.toJson()).toList(),
    };
