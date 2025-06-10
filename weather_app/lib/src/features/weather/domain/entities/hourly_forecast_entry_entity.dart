
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'hourly_forecast_entry_entity.freezed.dart';


@freezed
class HourlyForecastEntryEntity with _$HourlyForecastEntryEntity {
  const factory HourlyForecastEntryEntity({
    required DateTime dateTime, 
    required double temperature, 
    required String description, 
    required String iconCode, 
    required double feelsLike, 
    required int humidity, 
    required double windSpeed, 
    required double pressure, 
    required double uvIndex, 
    required int chanceOfPrecipitation, 
  }) = _HourlyForecastEntryEntity;

  const HourlyForecastEntryEntity._(); 

  String get iconUrl =>
      'https://www.weatherbit.io/static/img/icons/$iconCode.png'; 

  String get timeDisplay {
    final hour = dateTime.hour;
    final minute = dateTime.minute;
    final ampm = hour < 12 ? 'AM' : 'PM';
    final displayHour = hour % 12 == 0 ? 12 : hour % 12;
    return '${displayHour}:${minute.toString().padLeft(2, '0')} $ampm';
  }

  String get time => DateFormat.jm().format(dateTime); 

  String get temperatureDisplay => '${temperature.round()}°';

  String get windDisplay => '${windSpeed.toStringAsFixed(1)} km/h';

  String get chanceOfPrecipitationDisplay => '$chanceOfPrecipitation%';

  String get iconAsset =>
      'assets/images/${description.toLowerCase().replaceAll(' ', '_')}.png';
}
