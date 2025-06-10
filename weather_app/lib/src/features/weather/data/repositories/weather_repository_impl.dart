
import 'package:dartz/dartz.dart'; 
import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart'; 

import '../../domain/entities/weather_entity.dart';
import '../../domain/entities/forecast_entry_entity.dart'; 
import '../../domain/entities/hourly_forecast_entry_entity.dart'; 
import '../../domain/entities/alert_entity.dart'; 

import '../../domain/repositories/weather_repository.dart'; 

import '../datasources/weather_remote_data_source.dart'; 

import '../models/current_weather_model.dart'; 
import '../models/forecast_model.dart'; 
import '../models/forecast_day_model.dart'; 
import '../models/hourly_forecast_model.dart'; 
import '../models/hourly_entry_model.dart'; 
import '../models/alerts_model.dart'; 
import '../models/alert_model.dart'; 

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherRemoteDataSource remoteDataSource;

  WeatherRepositoryImpl(
      {required this.remoteDataSource});

  @override
  Future<Either<Failure, WeatherEntity>> getCurrentWeather(
      String locationQuery) async {
    print(
        'Repository: Getting current weather for $locationQuery...'); 
    try {
      final weatherModel =
          await remoteDataSource.getCurrentWeather(locationQuery);
      print(
          'Repository: Got current weather model, mapping to entity.'); 

      if (weatherModel == null) {
        print(
            'Repository: Received null weather model from data source, returning Left(ParsingFailure).'); 
        return Left(ParsingFailure(
            'Received null weather data from source for "$locationQuery".'));
      }

      final weatherEntity = weatherModel.toEntity();
      print(
          'Repository: Current weather mapping successful, returning Right.'); 
      return Right(
          weatherEntity); 
    } on ServerException catch (e) {
      print(
          'Repository: Caught ServerException: ${e.message}, returning Left(ServerFailure).'); 
      return Left(ServerFailure(e.message)); 
    } on ParsingException catch (e) {
      print(
          'Repository: Caught ParsingException: ${e.message}, returning Left(ParsingFailure).'); 
      return Left(ParsingFailure(e.message)); 
    } on ApiException catch (e) {
      print(
          'Repository: Caught ApiException: ${e.message} (Status: ${e.statusCode}), returning Left(ServerFailure).'); 
      return Left(ServerFailure(
          '${e.message} (Status: ${e.statusCode})')); 
    } catch (e) {
      print(
          'Repository: Caught unexpected error in getCurrentWeather: ${e.toString()}, returning Left(ServerFailure).'); 
      return Left(ServerFailure(
          'An unexpected error occurred: ${e.toString()}')); 
    }
  }

  @override
  Future<Either<Failure, List<ForecastEntryEntity>>> getForecast(
      String locationQuery) async {
    print(
        'Repository: Getting forecast (default days) for $locationQuery...');
    try {
      final forecastModel = await remoteDataSource.getForecast(locationQuery);
      print(
          'Repository: Got forecast model, mapping entries to entities.'); 

      if (forecastModel == null) {
        print(
            'Repository: Received null forecast model from data source, returning Left(ParsingFailure).'); 
        return Left(ParsingFailure(
            'Received null forecast data from source for "$locationQuery".'));
      }

      final List<ForecastEntryEntity> forecastEntities = forecastModel
          .forecastEntries 
          .map((entryModel) =>
              entryModel.toEntity()) 
          .toList(); 
      print(
          'Repository: Forecast mapping successful, returning Right with ${forecastEntities.length} entries.'); 
      return Right(forecastEntities); 
    } on ServerException catch (e) {
      print(
          'Repository: Caught ServerException getting forecast: ${e.message}, returning Left(ServerFailure).'); 
      return Left(ServerFailure(e.message)); 
    } on ParsingException catch (e) {
      print(
          'Repository: Caught ParsingException getting forecast: ${e.message}, returning Left(ParsingFailure).'); 
      return Left(ParsingFailure(e.message));
    } on ApiException catch (e) {
      print(
          'Repository: Caught ApiException getting forecast: ${e.message} (Status: ${e.statusCode}), returning Left(ServerFailure).');
      return Left(ServerFailure('${e.message} (Status: ${e.statusCode})'));
    } catch (e) {
      print(
          'Repository: Caught unexpected error getting forecast: ${e.toString()}, returning Left(ServerFailure).'); 
      return Left(ServerFailure(
          'An unexpected error occurred getting forecast: ${e.toString()}'));
    }
  }

  @override
  Future<Either<Failure, List<ForecastEntryEntity>>> getFullDailyForecast(
      String locationQuery) async {
    print(
        'Repository: Getting FULL (16-day) daily forecast for $locationQuery...'); 
    try {
      final forecastModel =
          await remoteDataSource.getFullDailyForecast(locationQuery);
      print(
          'Repository: Got FULL forecast model, mapping entries to entities.'); 

      if (forecastModel == null) {
        print(
            'Repository: Received null FULL forecast model from data source, returning Left(ParsingFailure).'); 
        return Left(ParsingFailure(
            'Received null FULL forecast data from source for "$locationQuery".'));
      }

      final List<ForecastEntryEntity> forecastEntities = forecastModel
          .forecastEntries 
          .map((entryModel) =>
              entryModel.toEntity()) 
          .toList(); 
      print(
          'Repository: FULL forecast mapping successful, returning Right with ${forecastEntities.length} entries.'); 
      return Right(forecastEntities); 
    } on ServerException catch (e) {
      print(
          'Repository: Caught ServerException getting FULL forecast: ${e.message}, returning Left(ServerFailure).'); 
      return Left(ServerFailure(e.message)); 
    } on ParsingException catch (e) {
      print(
          'Repository: Caught ParsingException getting FULL forecast: ${e.message}, returning Left(ParsingFailure).'); 
      return Left(ParsingFailure(e.message));
    } on ApiException catch (e) {
      print(
          'Repository: Caught ApiException getting FULL forecast: ${e.message} (Status: ${e.statusCode}), returning Left(ServerFailure).'); 
      return Left(ServerFailure('${e.message} (Status: ${e.statusCode})'));
    } catch (e) {
      print(
          'Repository: Caught unexpected error getting FULL forecast: ${e.toString()}, returning Left(ServerFailure).'); 
      return Left(ServerFailure(
          'An unexpected error occurred getting FULL forecast: ${e.toString()}'));
    }
  }

  @override
  Future<Either<Failure, List<HourlyForecastEntryEntity>>> getHourlyForecast(
      String locationQuery,
      {int hours = 48}) async {
    print(
        'Repository: Getting hourly forecast ($hours hours) for $locationQuery...'); 
    try {
      final hourlyForecastModel =
          await remoteDataSource.getHourlyForecast(locationQuery, hours: hours);
      print(
          'Repository: Got hourly forecast model, mapping entries to entities.'); 

      if (hourlyForecastModel == null) {
        print(
            'Repository: Received null hourly forecast model from data source, returning Left(ParsingFailure).');
        return Left(ParsingFailure(
            'Received null hourly forecast data from source for "$locationQuery".'));
      }

      final List<HourlyForecastEntryEntity> hourlyEntities = hourlyForecastModel
          .hourlyEntries 
          .map((entryModel) =>
              entryModel.toEntity()) 
          .toList(); 
      print(
          'Repository: Hourly forecast mapping successful, returning Right with ${hourlyEntities.length} entries.');
      return Right(hourlyEntities); 
    } on ServerException catch (e) {
      print(
          'Repository: Caught ServerException getting hourly forecast: ${e.message}, returning Left(ServerFailure).'); 
      return Left(ServerFailure(e.message)); 
    } on ParsingException catch (e) {
      print(
          'Repository: Caught ParsingException getting hourly forecast: ${e.message}, returning Left(ParsingFailure).'); 
      return Left(ParsingFailure(e.message));
    } on ApiException catch (e) {
      print(
          'Repository: Caught ApiException getting hourly forecast: ${e.message} (Status: ${e.statusCode}), returning Left(ServerFailure).'); 
      return Left(ServerFailure('${e.message} (Status: ${e.statusCode})'));
    } catch (e) {
      print(
          'Repository: Caught unexpected error getting hourly forecast: ${e.toString()}, returning Left(ServerFailure).'); 
      return Left(ServerFailure(
          'An unexpected error occurred getting hourly forecast: ${e.toString()}'));
    }
  }

  @override
  Future<Either<Failure, List<AlertEntity>>> getSevereWeatherAlerts(
      String locationQuery) async {
    print(
        'Repository: Getting severe weather alerts for $locationQuery...'); 
    try {
      final alertsModel =
          await remoteDataSource.getSevereWeatherAlerts(locationQuery);
      print(
          'Repository: Got alerts model, mapping entries to entities.'); 

      if (alertsModel == null) {
        print(
            'Repository: Received null alerts model from data source, returning Left(ParsingFailure).'); 
        return Left(ParsingFailure(
            'Received null alerts data from source for "$locationQuery".'));
      }

      final List<AlertEntity> alertEntities = alertsModel
          .alerts 
          .map((alertModel) =>
              alertModel.toEntity()) 
          .toList(); 

      print(
          'Repository: Alerts mapping successful, returning Right with ${alertEntities.length} entries.'); 
      return Right(alertEntities); 
    } on ServerException catch (e) {
      print(
          'Repository: Caught ServerException getting alerts: ${e.message}, returning Left(ServerFailure).'); 
      return Left(ServerFailure(e.message)); 
    } on ParsingException catch (e) {
      print(
          'Repository: Caught ParsingException getting alerts: ${e.message}, returning Left(ParsingFailure).'); 
      return Left(ParsingFailure(e.message));
    } on ApiException catch (e) {
      print(
          'Repository: Caught ApiException getting alerts: ${e.message} (Status: ${e.statusCode}), returning Left(ServerFailure).'); 
      return Left(ServerFailure('${e.message} (Status: ${e.statusCode})'));
    } catch (e) {
      print(
          'Repository: Caught unexpected error getting alerts: ${e.toString()}, returning Left(ServerFailure).'); 
      return Left(ServerFailure(
          'An unexpected error occurred getting alerts: ${e.toString()}'));
    }
  }
}
