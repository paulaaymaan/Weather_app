import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/weather_providers.dart';
import '../widgets/weather_details_widget.dart';
import '../widgets/forecast_widget.dart';
import 'city_search_screen.dart';
import 'full_forecast_screen.dart';
import 'hourly_forecast_screen.dart';
import 'alerts_screen.dart';
import 'five_day_forecast_screen.dart';

class WeatherScreen extends ConsumerWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedLocation = ref.watch(selectedLocationProvider);
    final currentWeatherAsyncValue = ref.watch(currentWeatherDataProvider);
    final forecastAsyncValue = ref.watch(forecastDataProvider);
    ref.watch(locationInitializerProvider);

    final String displayCityName = selectedLocation?['city'] ?? 'Loading...';

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          displayCityName,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const CitySearchScreen()));
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/cloudy_background.png', 
              fit: BoxFit.cover,
              alignment: const Alignment(0, -0.5), 
            ),
          ),

          RefreshIndicator(
            onRefresh: () async {
              await Future.wait([
                ref.refresh(currentWeatherDataProvider.future),
                ref.refresh(forecastDataProvider.future),
                ref.refresh(fullDailyForecastDataProvider.future),
                ref.refresh(hourlyForecastDataProvider.future),
                ref.refresh(severeWeatherAlertsDataProvider.future),
              ]);
            },
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(16, 100, 16, 32),
              physics: const AlwaysScrollableScrollPhysics(),
              child: Center(
                child: currentWeatherAsyncValue.when(
                  loading: () =>
                      const CircularProgressIndicator(color: Colors.white),
                  error: (e, _) => Text('Error: $e',
                      style: const TextStyle(color: Colors.white)),
                  data: (weather) => Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '${weather.temperature.toInt()}°C',
                        style: const TextStyle(
                          fontSize: 64,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        '${weather.description} ${weather.temperature.toInt()}°',
                        style: const TextStyle(
                            fontSize: 18, color: Colors.white70),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text('AQI - ${weather.aqi}',
                            style: const TextStyle(color: Colors.white)),
                      ),
                      const SizedBox(height: 24),
                      forecastAsyncValue.when(
                        loading: () => const CircularProgressIndicator(
                            color: Colors.white),
                        error: (e, _) => Text('Forecast error: $e',
                            style: const TextStyle(color: Colors.white70)),
                        data: (forecast) =>
                            ForecastWidget(forecastEntries: forecast),
                      ),
                      const SizedBox(height: 24),
                      WeatherDetailsWidget(weather: weather),
                      const SizedBox(height: 24),
                      _buildNavigationOption(
                        context: context,
                        title: 'View 5-Day Forecast',
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const FiveDayForecastScreen())),
                      ),
                      const SizedBox(height: 12),
                      _buildNavigationOption(
                        context: context,
                        title: 'View Full 16-Day Forecast',
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const FullForecastScreen())),
                      ),
                      const SizedBox(height: 12),
                      _buildNavigationOption(
                        context: context,
                        title: 'View Hourly Forecast',
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const HourlyForecastScreen())),
                      ),
                      const SizedBox(height: 12),
                      _buildNavigationOption(
                        context: context,
                        title: 'View Severe Weather Alerts',
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const AlertsScreen())),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavigationOption({
    required BuildContext context,
    required String title,
    required VoidCallback onTap,
  }) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0x802196F3),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 8,
        shadowColor: Colors.black45,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontSize: 16)),
          const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.white),
        ],
      ),
    );
  }
}
