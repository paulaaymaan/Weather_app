import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_manager_app/src/features/weather/presentation/providers/weather_providers.dart';
import 'package:task_manager_app/src/features/weather/presentation/widgets/hourly_icon_helper_widget.dart';

class HourlyForecastScreen extends ConsumerWidget {
  const HourlyForecastScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hourlyForecastAsync = ref.watch(hourlyForecastDataProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hourly Forecast'),
        backgroundColor: const Color(0xFF2196F3),
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: const Color(0xFF2196F3),
      body: hourlyForecastAsync.when(
        loading: () => const Center(
          child: CircularProgressIndicator(color: Colors.white),
        ),
        error: (error, stack) => Center(
          child: Text('Error: $error',
              style: const TextStyle(color: Colors.white)),
        ),
        data: (hourlyList) => ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 8),
          itemCount: hourlyList.length,
          separatorBuilder: (_, __) => Divider(color: Colors.white24),
          itemBuilder: (context, index) {
            final entry = hourlyList[index];

            return ListTile(
              leading: Image.asset(
                getIconAsset(entry.description),
                width: 40,
                height: 40,
              ),
              title: Text(
                entry.time,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                entry.description,
                style: const TextStyle(color: Colors.white70),
              ),
              trailing: Text(
                '${entry.temperature.toInt()}°',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
