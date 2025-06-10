import '../models/current_weather_model.dart';
import '../models/forecast_model.dart'; 
import '../models/hourly_forecast_model.dart'; 
import '../models/alerts_model.dart'; 

abstract class WeatherRemoteDataSource {
  Future<CurrentWeatherModel> getCurrentWeather(String locationQuery);

  Future<ForecastModel> getForecast(
      String locationQuery); 

  Future<ForecastModel> getFullDailyForecast(String locationQuery);

  Future<HourlyForecastModel> getHourlyForecast(String locationQuery,
      {int hours = 48}); 

  Future<AlertsModel> getSevereWeatherAlerts(String locationQuery);
}
