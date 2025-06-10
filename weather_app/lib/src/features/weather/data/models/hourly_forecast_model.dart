import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'hourly_entry_model.dart';

part 'hourly_forecast_model.freezed.dart';

@freezed
class HourlyForecastModel with _$HourlyForecastModel {
  const factory HourlyForecastModel({
    @JsonKey(name: 'data') required List<HourlyEntryModel> hourlyEntries,
  }) = _HourlyForecastModel;

  factory HourlyForecastModel.fromJson(Map<String, dynamic> json) {
    final rawData = json['data'];
    if (rawData == null || rawData is! List) {
      throw const FormatException(
          'Missing or invalid "data" field in hourly forecast JSON');
    }

    return HourlyForecastModel(
      hourlyEntries: rawData
          .where((e) =>
              e != null && e is Map<String, dynamic>) 
          .map((e) => HourlyEntryModel.fromJson(e))
          .toList(),
    );
  }
}
