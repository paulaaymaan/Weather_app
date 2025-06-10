// lib/src/features/weather/data/datasources/weather_remote_data_source_impl.dart

import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';
import 'package:http/http.dart' as http;

import 'package:task_manager_app/src/core/constants/api_constants.dart';
import '../../../../core/error/exceptions.dart';
import '../models/current_weather_model.dart';
import '../models/forecast_model.dart';
import '../models/hourly_forecast_model.dart';
import '../models/alerts_model.dart';
import 'weather_remote_data_source.dart';

class WeatherRemoteDataSourceImpl implements WeatherRemoteDataSource {
  final http.Client client;

  WeatherRemoteDataSourceImpl({required this.client});

  Future<Map<String, dynamic>> _get(
      String endpoint, Map<String, String> queryParameters) async {
    final Map<String, String> allQueryParameters = {
      ...queryParameters,
      'units': 'M',
      'lang': 'en',
    };

    final uri = Uri.https(
        ApiConstants.weatherbitApiHost, '/$endpoint', allQueryParameters);

    try {
      final response = await client
          .get(uri, headers: ApiConstants.rapidApiHeaders)
          .timeout(const Duration(seconds: 15));
      if (response.statusCode != 200) {
        return _handleHttpError(response);
      }

      if (response.body.isEmpty) {
        throw ParsingException(
            'Empty response body for successful status from $uri');
      }

      final decoded = json.decode(response.body);
      if (decoded == null || decoded is! Map<String, dynamic>) {
        throw ParsingException('Unexpected JSON format from $uri');
      }

      if (decoded.containsKey('error')) {
        throw ApiException(
            'Weatherbit Error: ${decoded['error']} (Status: ${response.statusCode})',
            statusCode: 200);
      }

      return decoded;
    } on SocketException catch (e) {
      throw ServerException('Network error: ${e.message}');
    } on TimeoutException {
      throw ServerException('Request timed out.');
    } on FormatException catch (e) {
      throw ParsingException('Invalid JSON format: ${e.message}');
    } catch (e) {
      throw ServerException('Unexpected error: ${e.toString()}');
    }
  }

  Map<String, dynamic> _handleHttpError(http.Response response) {
    try {
      final errorBody = response.body;
      if (errorBody.isEmpty) {
        throw ApiException('HTTP ${response.statusCode}: Empty body',
            statusCode: response.statusCode);
      }

      final errorJson = json.decode(errorBody);
      if (errorJson is Map<String, dynamic>) {
        final message =
            errorJson['message'] ?? errorJson['error'] ?? 'Unknown error';
        throw ApiException(
            'API Error: $message (Status: ${response.statusCode})',
            statusCode: response.statusCode);
      } else {
        throw ApiException('Invalid error response format',
            statusCode: response.statusCode);
      }
    } catch (e) {
      throw ApiException('HTTP ${response.statusCode}: ${e.toString()}',
          statusCode: response.statusCode);
    }
  }

  Map<String, String> _buildLocationQueryParams(String locationQuery) {
    final queryParams = <String, String>{};
    final parts = locationQuery.split(',');
    if (parts.length == 2) {
      queryParams['lat'] = parts[0].trim();
      queryParams['lon'] = parts[1].trim();
    } else {
      queryParams['city'] = locationQuery.trim();
    }
    return queryParams;
  }

  @override
  Future<CurrentWeatherModel> getCurrentWeather(String locationQuery) async {
    final queryParams = _buildLocationQueryParams(locationQuery);
    final jsonResponse =
        await _get(ApiConstants.weatherbitCurrentEndpoint, queryParams);
    final data = jsonResponse['data'];
    if (data is List && data.isNotEmpty) {
      return CurrentWeatherModel.fromJson(data[0]);
    }
    throw ParsingException('No valid current weather data found.');
  }

  @override
  Future<ForecastModel> getForecast(String locationQuery) async {
    final queryParams = _buildLocationQueryParams(locationQuery)
      ..['days'] = '5';
    final jsonResponse =
        await _get(ApiConstants.weatherbitDailyForecastEndpoint, queryParams);
    if (jsonResponse['data'] is List) {
      return ForecastModel.fromJson(jsonResponse);
    }
    throw ParsingException('No valid forecast data found.');
  }

  @override
  Future<ForecastModel> getFullDailyForecast(String locationQuery) async {
     await Future.delayed(const Duration(seconds: 2));
    final queryParams = _buildLocationQueryParams(locationQuery)
      ..['days'] = '16';

    final jsonResponse = await _get(
      ApiConstants.weatherbitDailyForecastEndpoint,
      queryParams,
    );

    final rawData = jsonResponse['data'];

    // Defensive null and type check
    if (rawData == null || rawData is! List) {
      throw ParsingException(
        'FULL forecast response is missing "data" or it\'s not a list.',
      );
    }

    // Optional: log to debug unexpected null entries
    if (rawData.any((e) => e == null)) {
      print('[WARN] Forecast response contains null entries in "data".');
    }

    // Safe conversion
    return ForecastModel.fromJson(jsonResponse);
  }

  @override
  Future<HourlyForecastModel> getHourlyForecast(String locationQuery,
      {int hours = 48}) async {
    final queryParams = _buildLocationQueryParams(locationQuery)
      ..['hours'] = hours.toString();
    final jsonResponse =
        await _get(ApiConstants.weatherbitHourlyForecastEndpoint, queryParams);
    if (jsonResponse['data'] is List) {
      return HourlyForecastModel.fromJson(jsonResponse);
    }
    throw ParsingException('No valid hourly forecast data found.');
  }

  @override
  Future<AlertsModel> getSevereWeatherAlerts(String locationQuery) async {
    final queryParams = _buildLocationQueryParams(locationQuery);
    final jsonResponse =
        await _get(ApiConstants.weatherbitAlertsEndpoint, queryParams);
    return AlertsModel.fromJson(jsonResponse);
  }
}
