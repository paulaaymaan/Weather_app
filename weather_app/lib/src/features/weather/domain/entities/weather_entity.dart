import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_entity.freezed.dart';

@freezed
class WeatherEntity with _$WeatherEntity {
  const factory WeatherEntity({
    required double temperature,
    required String description,
    required String iconCode,
    required double feelsLike,
    required int humidity,
    required double windSpeed,
    required double pressure,
    required String city,
    required int aqi,
    required double uvIndex,
    double? chanceOfRain,
  }) = _WeatherEntity;

  const WeatherEntity._();

  String get temperatureDisplay => '${temperature.round()}°';

  String get iconUrl => iconCode.isEmpty
      ? ''
      : 'https://www.weatherbit.io/static/img/icons/$iconCode.png';

  String get windSpeedDisplay => '${windSpeed.toStringAsFixed(1)} km/h';

  String get pressureDisplay => '${pressure.round()} mbar';

  String get humidityDisplay => '$humidity%';

  String get aqiStatus {
    if (aqi <= 50) return 'Good';
    if (aqi <= 100) return 'Fair';
    if (aqi <= 150) return 'Moderate';
    if (aqi <= 200) return 'Poor';
    if (aqi <= 300) return 'Very Poor';
    return 'Hazardous';
  }

  String get uvIndexDisplay => uvIndex.toStringAsFixed(1);

  String get uvIndexStatus {
    if (uvIndex <= 2) return 'Low';
    if (uvIndex <= 5) return 'Moderate';
    if (uvIndex <= 7) return 'High';
    if (uvIndex <= 10) return 'Very High';
    return 'Extreme';
  }

  int get airQualityIndex => aqi;
}
