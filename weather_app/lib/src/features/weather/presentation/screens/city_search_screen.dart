
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; 
import '../../../../core/constants/city_list.dart'; 
import 'dart:async'; 
import '../providers/weather_providers.dart'; 


class CitySearchScreen extends ConsumerWidget {
  const CitySearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select City'), 
        backgroundColor: const Color(0xFF2196F3), 
        foregroundColor: Colors.white, 
        elevation: 0, 
      ),
      body: ListView.builder(
        itemCount: predefinedCities
            .length, 
        itemBuilder: (context, index) {
          final cityData = predefinedCities[index];
          final String cityName = cityData[
              'city']!; 
          final String cityQuery = cityData[
              'query']!; 

       
          return ListTile(
            title: Text(
                cityName), 
            textColor: Colors.black87, 
            onTap: () {
       
              ref.read(selectedLocationProvider.notifier).setLocation(
                    cityName, 
                    cityQuery, 
                  );
              print(
                  'CitySearchScreen: Set selected location via provider to "$cityName" ($cityQuery).'); 

         
              Timer.run(() {
                print(
                    'CitySearchScreen: Invalidating data providers after setting location.'); 
                ref.invalidate(
                    currentWeatherDataProvider); 
                ref.invalidate(
                    forecastDataProvider); 
                ref.invalidate(
                    fullDailyForecastDataProvider); 
                ref.invalidate(
                    hourlyForecastDataProvider); 
                ref.invalidate(
                    severeWeatherAlertsDataProvider); 
              });

    
              Navigator.pop(context);
            },
          );
        },
      ),
    );
  }
}
