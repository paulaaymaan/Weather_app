import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:task_manager_app/src/features/weather/data/models/condition_model.dart';
import '../../domain/entities/forecast_entry_entity.dart';

part 'forecast_day_model.freezed.dart';
part 'forecast_day_model.g.dart';

@freezed
class ForecastDayModel with _$ForecastDayModel {
  const factory ForecastDayModel({
    @JsonKey(name: 'valid_date') required DateTime date,
    @JsonKey(name: 'max_temp') required double maxTemp,
    @JsonKey(name: 'min_temp') required double minTemp,
    @JsonKey(name: 'wind_spd') required double windSpeed,
    @JsonKey(name: 'rh') required int humidity,
    @JsonKey(name: 'pop') required int chanceOfPrecipitation,
    @JsonKey(name: 'uv') double? uvIndex,
    @JsonKey(name: 'weather') required ConditionModel condition,
  }) = _ForecastDayModel;

  const ForecastDayModel._();

  factory ForecastDayModel.fromJson(Map<String, dynamic> json) =>
      _$ForecastDayModelFromJson(json);

  ForecastEntryEntity toEntity() {
    return ForecastEntryEntity(
      date: date,
      maxTemp: maxTemp,
      minTemp: minTemp,
      description: condition.description,
      iconCode: condition.icon,
      windSpeed: windSpeed,
      chanceOfRain: chanceOfPrecipitation,
      uvIndex: uvIndex ?? 0.0,
    );
  }
}
