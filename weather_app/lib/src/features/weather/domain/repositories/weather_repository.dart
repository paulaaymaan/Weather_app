
import 'package:dartz/dartz.dart'; 
import 'package:task_manager_app/src/core/error/failures.dart';
import '../entities/weather_entity.dart'; 
import '../entities/forecast_entry_entity.dart'; 
import '../entities/hourly_forecast_entry_entity.dart'; 
import '../entities/alert_entity.dart'; 

abstract class WeatherRepository {
  Future<Either<Failure, WeatherEntity>> getCurrentWeather(
      String locationQuery);

  Future<Either<Failure, List<ForecastEntryEntity>>> getForecast(
      String locationQuery); 

  Future<Either<Failure, List<ForecastEntryEntity>>> getFullDailyForecast(
      String locationQuery);

  Future<Either<Failure, List<HourlyForecastEntryEntity>>> getHourlyForecast(
      String locationQuery,
      {int hours = 48}); 

  Future<Either<Failure, List<AlertEntity>>> getSevereWeatherAlerts(
      String locationQuery);
}
