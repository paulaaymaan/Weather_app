// weather_providers.dart (simplified and null-safe)

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:dartz/dartz.dart';

import 'package:task_manager_app/src/core/constants/api_constants.dart';
import 'package:task_manager_app/src/core/error/failures.dart';
import 'package:task_manager_app/src/core/error/exceptions.dart';
import 'package:task_manager_app/src/core/location/location_service.dart';
import 'package:task_manager_app/src/features/weather/data/datasources/weather_remote_data_source.dart';

import '../../data/datasources/weather_remote_data_source_impl.dart';
import '../../data/repositories/weather_repository_impl.dart';
import '../../domain/repositories/weather_repository.dart';

import '../../domain/usecases/get_current_weather.dart';
import '../../domain/usecases/get_forecast.dart';
import '../../domain/usecases/get_full_daily_forecast.dart';
import '../../domain/usecases/get_hourly_forecast.dart';
import '../../domain/usecases/get_severe_weather_alerts.dart';

import '../../domain/entities/weather_entity.dart';
import '../../domain/entities/forecast_entry_entity.dart';
import '../../domain/entities/hourly_forecast_entry_entity.dart';
import '../../domain/entities/alert_entity.dart';

part 'weather_providers.g.dart';

@riverpod
http.Client httpClient(HttpClientRef ref) => http.Client();

@riverpod
LocationService locationService(LocationServiceRef ref) => LocationService();

@riverpod
WeatherRemoteDataSource weatherRemoteDataSource(
        WeatherRemoteDataSourceRef ref) =>
    WeatherRemoteDataSourceImpl(client: ref.watch(httpClientProvider));

@riverpod
WeatherRepository weatherRepository(WeatherRepositoryRef ref) =>
    WeatherRepositoryImpl(
        remoteDataSource: ref.watch(weatherRemoteDataSourceProvider));

@riverpod
GetCurrentWeather getCurrentWeatherUseCase(GetCurrentWeatherUseCaseRef ref) =>
    GetCurrentWeather(ref.watch(weatherRepositoryProvider));

@riverpod
GetForecast getForecastUseCase(GetForecastUseCaseRef ref) =>
    GetForecast(ref.watch(weatherRepositoryProvider));

@riverpod
GetFullDailyForecast getFullDailyForecastUseCase(
        GetFullDailyForecastUseCaseRef ref) =>
    GetFullDailyForecast(ref.watch(weatherRepositoryProvider));

@riverpod
GetHourlyForecast getHourlyForecastUseCase(GetHourlyForecastUseCaseRef ref) =>
    GetHourlyForecast(ref.watch(weatherRepositoryProvider));

@riverpod
GetSevereWeatherAlerts getSevereWeatherAlertsUseCase(
        GetSevereWeatherAlertsUseCaseRef ref) =>
    GetSevereWeatherAlerts(ref.watch(weatherRepositoryProvider));

@riverpod
Future<Map<String, String>> locationData(LocationDataRef ref) async {
  final locationService = ref.watch(locationServiceProvider);
  final locationResult = await locationService.getCurrentLocation();
  return locationResult.fold(
    (failure) => throw failure,
    (position) async {
      final locationQuery = '${position.latitude},${position.longitude}';
      try {
        final placemarks = await placemarkFromCoordinates(
            position.latitude, position.longitude);
        final cityName = placemarks.first.locality ??
            placemarks.first.administrativeArea ??
            'Unknown City';
        return {'query': locationQuery, 'city': cityName};
      } catch (_) {
        return {'query': locationQuery, 'city': 'Unknown City'};
      }
    },
  );
}

@riverpod
class SelectedLocation extends _$SelectedLocation {
  @override
  Map<String, String>? build() => null;

  void setLocation(String city, String query) =>
      state = {'query': query, 'city': city};
  void clearLocation() {
    state = null;
    ref.invalidate(locationDataProvider);
  }
}

@riverpod
Future<void> locationInitializer(LocationInitializerRef ref) async {
  final initialLocationData = await ref.watch(locationDataProvider.future);
  ref.read(selectedLocationProvider.notifier).setLocation(
        initialLocationData['city'] ?? 'Unknown City',
        initialLocationData['query'] ?? '',
      );
}

@riverpod
Future<WeatherEntity> currentWeatherData(CurrentWeatherDataRef ref) async {
  final selected = ref.watch(selectedLocationProvider);
  if (selected == null) {
    return const WeatherEntity(
      temperature: 0.0,
      description: 'Loading...',
      iconCode: '',
      feelsLike: 0.0,
      humidity: 0,
      windSpeed: 0.0,
      pressure: 0.0,
      city: 'Getting Location...',
      aqi: 0,
      uvIndex: 0.0,
    );
  }
  final getWeather = ref.watch(getCurrentWeatherUseCaseProvider);
  final result = await getWeather(
      GetCurrentWeatherParams(locationQuery: selected['query']!));
  return result.fold(
    (failure) => throw failure,
    (weather) => weather.copyWith(city: selected['city']!),
  );
}

@riverpod
Future<List<ForecastEntryEntity>> forecastData(ForecastDataRef ref) async {
  final selected = ref.watch(selectedLocationProvider);
  if (selected == null) return [];
  final result = await ref.watch(getForecastUseCaseProvider)(
    GetForecastParams(locationQuery: selected['query']!),
  );
  return result.fold((f) => throw f, (data) => data);
}

@riverpod
Future<List<ForecastEntryEntity>> fullDailyForecastData(
    FullDailyForecastDataRef ref) async {
  final selected = ref.watch(selectedLocationProvider);
  if (selected == null) return [];
  final result = await ref.watch(getFullDailyForecastUseCaseProvider)(
    GetFullDailyForecastParams(locationQuery: selected['query']!),
  );
  return result.fold((f) => throw f, (data) => data);
}

@riverpod
Future<List<HourlyForecastEntryEntity>> hourlyForecastData(
    HourlyForecastDataRef ref) async {
  final selected = ref.watch(selectedLocationProvider);
  if (selected == null) return [];
  final result = await ref.watch(getHourlyForecastUseCaseProvider)(
    GetHourlyForecastParams(locationQuery: selected['query']!, hours: 120),
  );
  return result.fold((f) => throw f, (data) => data);
}

@riverpod
Future<List<AlertEntity>> severeWeatherAlertsData(
    SevereWeatherAlertsDataRef ref) async {
  final selected = ref.watch(selectedLocationProvider);
  if (selected == null) return [];
  final result = await ref.watch(getSevereWeatherAlertsUseCaseProvider)(
    GetSevereWeatherAlertsParams(locationQuery: selected['query']!),
  );
  return result.fold((f) => throw f, (data) => data);
}
