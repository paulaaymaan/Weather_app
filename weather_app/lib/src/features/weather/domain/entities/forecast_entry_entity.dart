
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecast_entry_entity.freezed.dart';

@freezed
class ForecastEntryEntity with _$ForecastEntryEntity {
  const factory ForecastEntryEntity({
    required int chanceOfRain,
    required DateTime date,
    required String description,
    required String iconCode, 
    required double maxTemp,
    required double minTemp,
    required double uvIndex,
    required double windSpeed, 
  }) = _ForecastEntryEntity;

  const ForecastEntryEntity._();


  String get tempRangeDisplay => '${maxTemp.round()}°/${minTemp.round()}°';

  String get windDisplay => '${windSpeed.toStringAsFixed(1)} km/h';

  String get iconUrl => iconCode.isNotEmpty
      ? 'https://www.weatherbit.io/static/img/icons/$iconCode.png'
      : '';

  String get chanceOfRainDisplay => '$chanceOfRain%';

  String get uvIndexDisplay => uvIndex.toStringAsFixed(1);
  String get windSpeedDisplay => '${windSpeed.toStringAsFixed(1)} km/h';
}
