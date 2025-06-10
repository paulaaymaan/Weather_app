class ApiConstants {
  static const String weatherbitApiHost =
      'weatherbit-v1-mashape.p.rapidapi.com';

  static const String weatherbitApiKey =
      ' 27557d2a65msh6f55ef574677929p19b152jsn6fc2ddf30d89';

  static const Map<String, String> rapidApiHeaders = {
    'X-RapidAPI-Key': weatherbitApiKey,
    'X-RapidAPI-Host': weatherbitApiHost,
    'Content-Type': 'application/json',
  };

  static const String weatherbitCurrentEndpoint = 'current';
  static const String weatherbitDailyForecastEndpoint = 'forecast/daily';
  static const String weatherbitHourlyForecastEndpoint = 'forecast/hourly';
  static const String weatherbitAlertsEndpoint = 'alerts';
}
