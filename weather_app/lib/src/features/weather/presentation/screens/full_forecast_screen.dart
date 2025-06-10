
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/weather_providers.dart';
import '../widgets/full_daily_forecast_list_widget.dart';


class FullForecastScreen extends ConsumerWidget {
  const FullForecastScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fullForecastAsyncValue = ref.watch(fullDailyForecastDataProvider);

    return Scaffold(
      backgroundColor: const Color(0xFF2196F3),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Full 16-Day Forecast',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      extendBodyBehindAppBar: true,
      body: Padding(
        padding: const EdgeInsets.all(16.0).copyWith(
          top: MediaQuery.of(context).padding.top +
              AppBar().preferredSize.height +
              16,
        ),
        child: fullForecastAsyncValue.when(
          loading: () => const Center(
            child: CircularProgressIndicator(color: Colors.white),
          ),
          error: (error, stack) => Center(
            child: Text(
              'Error loading full forecast: ${error.toString()}',
              style: const TextStyle(color: Colors.white),
            ),
          ),
          data: (forecastEntries) {
            if (forecastEntries.isEmpty) {
              return const Center(
                child: Text(
                  'No full forecast data available.',
                  style: TextStyle(color: Colors.white),
                ),
              );
            }
            return SingleChildScrollView(
              child:
                  FullDailyForecastListWidget(forecastEntries: forecastEntries),
            );
          },
        ),
      ),
    );
  }
}
