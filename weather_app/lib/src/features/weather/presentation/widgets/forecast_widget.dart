import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:task_manager_app/src/features/weather/domain/entities/forecast_entry_entity.dart';

class ForecastWidget extends StatelessWidget {
  final List<ForecastEntryEntity> forecastEntries;
  const ForecastWidget({super.key, required this.forecastEntries});

  String getDayLabel(DateTime date, int index) {
    if (index == 0) return 'Today';
    if (index == 1) return 'Tomorrow';
    return DateFormat('EEE').format(date); 
  }

  String getIconAsset(String description) {
    final desc = description.toLowerCase();
    if (desc.contains('rain') && desc.contains('cloud'))
      return 'assets/images/cloudy and rain.png';
    if (desc.contains('thunder')) return 'assets/images/thunder.png';
    if (desc.contains('cloud')) return 'assets/images/cloudy.png';
    return 'assets/images/sunny.png';
  }

  @override
  Widget build(BuildContext context) {
    if (forecastEntries.isEmpty) {
      return const Text(
        'No forecast data available.',
        style: TextStyle(color: Colors.white),
      );
    }

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0x802196F3),
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(color: Colors.black26, blurRadius: 8, offset: Offset(0, 4))
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Icon(Icons.info_outline, size: 18, color: Colors.white),
              SizedBox(width: 8),
              Text(
                'Five day forecast',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              )
            ],
          ),
          const SizedBox(height: 12),
          ...List.generate(
            forecastEntries.length >= 5 ? 5 : forecastEntries.length,
            (index) {
              final entry = forecastEntries[index];
              final iconPath = getIconAsset(entry.description);
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(iconPath, width: 36, height: 36),
                        const SizedBox(width: 8),
                        Text(
                          '${getDayLabel(entry.date, index)} ${entry.description}',
                          style: const TextStyle(
                              color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                    Text(
                      '${entry.maxTemp.toInt()}° / ${entry.minTemp.toInt()}°',
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
