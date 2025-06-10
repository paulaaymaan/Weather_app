
import 'package:flutter/material.dart';
import 'package:task_manager_app/src/features/weather/domain/entities/forecast_entry_extensions.dart';
import '../../domain/entities/forecast_entry_entity.dart'; 
import 'package:cached_network_image/cached_network_image.dart'; 

class FullDailyForecastListWidget extends StatelessWidget {
  final List<ForecastEntryEntity>
      forecastEntries; 
  const FullDailyForecastListWidget({super.key, required this.forecastEntries});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap:
          true, 
      physics:
          const NeverScrollableScrollPhysics(), 
      itemCount: forecastEntries.length, 
   
      separatorBuilder: (context, index) =>
          const Divider(color: Colors.white30), 
      itemBuilder: (context, index) {
        final entry = forecastEntries[
            index]; 

        return Padding(
          padding: const EdgeInsets.symmetric(
              vertical: 8.0), 
          child: Row(
            mainAxisAlignment: MainAxisAlignment
                .spaceBetween, 
            children: [
              Expanded(
                flex: 2, 
                child: Text(
                  entry
                      .dateDisplay, 
                  style: const TextStyle(fontSize: 16, color: Colors.white70),
                ),
              ),
              
              Expanded(
                flex: 3, 
                child: Row(
                  children: [
                    if (entry
                        .iconUrl.isNotEmpty) 
                      CachedNetworkImage(
                        imageUrl: entry
                            .iconUrl, 
                        width: 40, height: 40, 
                        placeholder: (context, url) => SizedBox(
                            width: 40, height: 40), 
                        errorWidget: (context, url, error) => Icon(Icons.error,
                            color:
                                Colors.white30), 
                      ),
                    const SizedBox(
                        width: 8), 
                    Expanded(
                      child: Text(
                        entry.description, 
                        style:
                            const TextStyle(fontSize: 16, color: Colors.white),
                        overflow: TextOverflow
                            .ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2, 
                child: Text(
                  entry
                      .tempRangeDisplay, 
                  textAlign: TextAlign.right, 
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
