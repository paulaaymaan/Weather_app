
import 'package:flutter/material.dart';
import '../../domain/entities/alert_entity.dart'; 

class AlertsListWidget extends StatelessWidget {
  final List<AlertEntity> alerts; 
  const AlertsListWidget({super.key, required this.alerts});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true, 
      physics:
          const NeverScrollableScrollPhysics(), 
      itemCount: alerts.length, 
      separatorBuilder: (context, index) =>
          const Divider(color: Colors.white30), 
      itemBuilder: (context, index) {
        final alert = alerts[index]; 

        return Card(
          color: Colors.red[700]!.withOpacity(
              0.8), 
          elevation: 4, 
          margin: const EdgeInsets.symmetric(
              vertical: 8.0, horizontal: 4.0), 
          child: Padding(
            padding: const EdgeInsets.all(16.0), 
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, 
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        alert.title, 
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        overflow: TextOverflow
                            .ellipsis, 
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      alert.severity, 
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.yellowAccent,
                          fontWeight: FontWeight.bold), 
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  alert.description, 
                  style: const TextStyle(fontSize: 14, color: Colors.white70),
                ),
                const SizedBox(height: 8),
                Text(
                  'Effective: ${alert.effectiveTimeDisplay}', 
                  style: const TextStyle(fontSize: 12, color: Colors.white54),
                ),
                Text(
                  'Expires: ${alert.expiresTimeDisplay}', 
                  style: const TextStyle(fontSize: 12, color: Colors.white54),
                ),
                const SizedBox(height: 8),
                Text(
                  'Regions: ${alert.regionsDisplay}', 
                  style: const TextStyle(fontSize: 12, color: Colors.white54),
                  overflow: TextOverflow
                      .ellipsis, 
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
