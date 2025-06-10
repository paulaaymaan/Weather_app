import 'package:flutter/material.dart';
import 'package:task_manager_app/src/features/weather/domain/entities/weather_entity.dart';

class WeatherDetailsWidget extends StatelessWidget {
  final WeatherEntity weather;

  const WeatherDetailsWidget({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.3),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        children: [
          // First row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildItem('Humidity', weather.humidityDisplay),
              _buildItem('Wind direction', weather.windSpeedDisplay),
              _buildItem('Pressure', weather.pressureDisplay),
              _buildItem('AQI', '${weather.aqi}'),
            ],
          ),
          const SizedBox(height: 16),

          // Second row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildItem('UV', weather.uvIndexDisplay),
              _buildItem('Real feel', '${weather.feelsLike.toInt()}°'),
              _buildItem(
                  'Chance of rain', '${(weather.chanceOfRain ?? 0).toInt()}%'),
              _buildItem('Air quality', weather.aqiStatus),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildItem(String label, String value) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 12,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
