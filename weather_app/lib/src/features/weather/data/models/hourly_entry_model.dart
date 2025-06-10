

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'condition_model.dart'; 
import '../../domain/entities/hourly_forecast_entry_entity.dart'; 

part 'hourly_entry_model.freezed.dart';
part 'hourly_entry_model.g.dart';

@freezed
class HourlyEntryModel with _$HourlyEntryModel {
  const factory HourlyEntryModel({
    @JsonKey(name: 'ts')
    required int timestamp, 
    @JsonKey(name: 'datetime') required String datetimeStr, 
    @JsonKey(name: 'temp')
    required double temperature, 
    @JsonKey(name: 'app_temp')
    required double feelsLike, 
    @JsonKey(name: 'rh') required int humidity, 
    @JsonKey(name: 'wind_spd')
    required double windSpeed, 
    @JsonKey(name: 'pres') required double pressure, 
    @JsonKey(name: 'uv') required double uvIndex, 
    @JsonKey(name: 'pop')
    required int chanceOfPrecipitation, 
    @JsonKey(name: 'weather')
    required ConditionModel
        condition, 
  }) = _HourlyEntryModel;

  const HourlyEntryModel._();

  factory HourlyEntryModel.fromJson(Map<String, dynamic> json) =>
      _$HourlyEntryModelFromJson(json);

  HourlyForecastEntryEntity toEntity() {
    final DateTime dateTime =
        DateTime.fromMillisecondsSinceEpoch(timestamp * 1000, isUtc: true);

    return HourlyForecastEntryEntity(
      dateTime: dateTime, 
      temperature: this.temperature,
      description: this.condition.description,
      iconCode: this.condition.icon, 
      feelsLike: this.feelsLike,
      humidity: this.humidity,
      windSpeed: this.windSpeed,
      pressure: this.pressure,
      uvIndex: this.uvIndex,
      chanceOfPrecipitation: this.chanceOfPrecipitation,
    );
  }
}
