import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_manager_app/src/features/weather/domain/entities/forecast_entry_entity.dart';
import 'package:task_manager_app/src/features/weather/domain/entities/forecast_entry_extensions.dart';
import 'package:task_manager_app/src/features/weather/presentation/providers/weather_providers.dart';

class FiveDayForecastScreen extends ConsumerWidget {
  const FiveDayForecastScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final forecastAsync = ref.watch(forecastDataProvider);

    return Scaffold(
      backgroundColor: const Color(0xFF2196F3),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:
            const Text('5-day forecast', style: TextStyle(color: Colors.white)),
        centerTitle: false,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Row(
              children: [
                Icon(Icons.location_on, color: Colors.white),
                SizedBox(width: 4),
                Text("Mountain View", style: TextStyle(color: Colors.white))
              ],
            ),
          )
        ],
      ),
      body: forecastAsync.when(
        loading: () =>
            const Center(child: CircularProgressIndicator(color: Colors.white)),
        error: (e, _) => Center(
            child:
                Text('Error: $e', style: const TextStyle(color: Colors.white))),
        data: (entries) {
          final forecast = entries.take(5).toList();
          final maxTemps = forecast.map((e) => e.maxTemp).toList();
          final minTemps = forecast.map((e) => e.minTemp).toList();

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: forecast
                      .map((e) => Text(e.dateLabel,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600)))
                      .toList(),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: forecast
                      .map((e) => Image.asset(e.iconAsset, height: 28))
                      .toList(),
                ),
                const SizedBox(height: 4),
                SizedBox(
                  height: 100,
                  child: TemperatureLineChart(
                    temps: maxTemps,
                    lineColor: Colors.white,
                    textColor: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: TemperatureLineChart(
                    temps: minTemps,
                    lineColor: Colors.white70,
                    textColor: Colors.white70,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: forecast
                      .map((e) => Image.asset(e.iconAsset, height: 28))
                      .toList(),
                ),
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: forecast
                      .map((e) => Text('${e.windKph.toStringAsFixed(1)}km/h',
                          style: const TextStyle(color: Colors.white70)))
                      .toList(),
                ),
                const SizedBox(height: 24),
                const Text('Current Air Quality',
                    style: TextStyle(color: Colors.white70)),
                const SizedBox(height: 12),
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white54, width: 2),
                  ),
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('45',
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        Text('Fair',
                            style:
                                TextStyle(fontSize: 16, color: Colors.white70))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class TemperatureLineChart extends StatelessWidget {
  final List<double> temps;
  final Color lineColor;
  final Color textColor;

  const TemperatureLineChart({
    super.key,
    required this.temps,
    required this.lineColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => CustomPaint(
        size: Size(constraints.maxWidth, constraints.maxHeight),
        painter: _LineWithDotsPainter(
            temps: temps, lineColor: lineColor, textColor: textColor),
      ),
    );
  }
}

class _LineWithDotsPainter extends CustomPainter {
  final List<double> temps;
  final Color lineColor;
  final Color textColor;

  _LineWithDotsPainter(
      {required this.temps, required this.lineColor, required this.textColor});

  @override
  void paint(Canvas canvas, Size size) {
    if (temps.length < 2) return;

    final max = temps.reduce((a, b) => a > b ? a : b);
    final min = temps.reduce((a, b) => a < b ? a : b);
    final range = max - min == 0 ? 1 : max - min;
    final dx = size.width / (temps.length - 1);

    final points = <Offset>[];
    for (int i = 0; i < temps.length; i++) {
      final x = dx * i;
      final y = size.height - ((temps[i] - min) / range * size.height * 0.7);
      points.add(Offset(x, y));
    }

    final path = Path()..moveTo(points.first.dx, points.first.dy);
    for (int i = 1; i < points.length; i++) {
      path.lineTo(points[i].dx, points[i].dy);
    }

    final paint = Paint()
      ..color = lineColor
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    canvas.drawPath(path, paint);

    final dotPaint = Paint()
      ..color = lineColor
      ..style = PaintingStyle.fill;

    final textStyle = TextStyle(color: textColor, fontSize: 12);
    final textPainter = TextPainter(textDirection: TextDirection.ltr);

    for (int i = 0; i < points.length; i++) {
      canvas.drawCircle(points[i], 3, dotPaint);
      final textSpan =
          TextSpan(text: '${temps[i].toStringAsFixed(0)}°', style: textStyle);
      textPainter.text = textSpan;
      textPainter.layout();
      textPainter.paint(canvas,
          Offset(points[i].dx - textPainter.width / 2, points[i].dy - 18));
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
