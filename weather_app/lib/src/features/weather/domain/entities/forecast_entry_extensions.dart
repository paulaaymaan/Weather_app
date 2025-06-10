import 'package:intl/intl.dart';
import 'package:task_manager_app/src/features/weather/domain/entities/forecast_entry_entity.dart';

extension ForecastEntryEntityExtensions on ForecastEntryEntity {
  String get dateLabel {
    final now = DateTime.now();
    final diff = date.difference(now).inDays;

    if (diff == 0) return "Today";
    if (diff == 1) return "Tomorrow";

    return DateFormat('E').format(date); 
  }

  String get dateDisplay =>
      DateFormat('EEE, MMM d').format(date); 

  String get iconAsset {
    final descriptionLower = description.toLowerCase();
    if (descriptionLower.contains('thunder')) {
      return 'assets/images/cloudy and thunder.png';
    } else if (descriptionLower.contains('rain')) {
      return 'assets/images/cloudy and rain.png';
    } else if (descriptionLower.contains('sun') ||
        descriptionLower.contains('clear')) {
      return 'assets/images/sun.png';
    } else if (descriptionLower.contains('cloud')) {
      return 'assets/images/cloudy.png';
    }

    return 'assets/images/cloudy.png'; 
  }

  double get windKph => windSpeed;
}
