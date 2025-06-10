
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; 
import '../providers/weather_providers.dart'; 
import '../widgets/alerts_list_widget.dart'; 


class AlertsScreen extends ConsumerWidget {
  const AlertsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final alertsAsyncValue = ref.watch(severeWeatherAlertsDataProvider);

    return Scaffold(
      backgroundColor: const Color(0xFF2196F3),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Severe Weather Alerts',
            style: TextStyle(color: Colors.white)),
        iconTheme: const IconThemeData(
            color: Colors.white), 
      ),
      extendBodyBehindAppBar: true, 

      body: Padding(
        padding: const EdgeInsets.all(16.0).copyWith(
            top: MediaQuery.of(context).padding.top +
                AppBar().preferredSize.height +
                16),
        child: alertsAsyncValue.when(
          loading: () => const Center(
              child: CircularProgressIndicator(
                  color: Colors.white)), 
          error: (error, stack) => Center(
              child: Text('Error loading alerts: ${error.toString()}',
                  style: TextStyle(color: Colors.white))), 
          data: (alerts) {
         
            if (alerts.isEmpty) {
              return const Center(
                  child: Text(
                      'No severe weather alerts currently active for this location.',
                      style: TextStyle(color: Colors.white)));
            }
            return AlertsListWidget(
                alerts: alerts); 
          },
        ),
      ),
    );
  }
}
