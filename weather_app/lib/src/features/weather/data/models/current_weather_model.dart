

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/weather_entity.dart'; 
import 'weather_object_model.dart'; 

part 'current_weather_model.freezed.dart';
part 'current_weather_model.g.dart';


@freezed
class CurrentWeatherModel with _$CurrentWeatherModel {
  const factory CurrentWeatherModel({
    @JsonKey(name: 'temp')
    required double temperature, 
    @JsonKey(name: 'app_temp')
    required double feelsLike, 
    @JsonKey(name: 'rh') required int humidity, 
    @JsonKey(name: 'wind_spd')
    required double
        windSpeed, 
    @JsonKey(name: 'pres') required double pressure, 
    @JsonKey(name: 'uv') required double uvIndex, 
    @JsonKey(name: 'aqi') required int aqi, 
    @JsonKey(name: 'city_name')
    required String cityName, 
    @JsonKey(name: 'state_code') String? stateCode, 
    @JsonKey(name: 'country_code')
    String? countryCode, 
    @JsonKey(name: 'weather')
    required WeatherObjectModel weatherData, 
  }) = _CurrentWeatherModel;

  const CurrentWeatherModel._(); 

  factory CurrentWeatherModel.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherModelFromJson(json);


  WeatherEntity toEntity() {
    return WeatherEntity(
      temperature: this.temperature,
      description: this.weatherData.description,
      iconCode: this.weatherData.icon,
      feelsLike: this.feelsLike,
      humidity: this.humidity,
     
      windSpeed: this
          .windSpeed, 
      pressure: this.pressure,
      city: this.cityName, 
      aqi: this.aqi,
      uvIndex: this.uvIndex,
    );
  }
}
