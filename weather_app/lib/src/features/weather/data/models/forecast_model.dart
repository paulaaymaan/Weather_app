import 'package:freezed_annotation/freezed_annotation.dart';
import 'forecast_day_model.dart';

part 'forecast_model.freezed.dart';
part 'forecast_model.g.dart';

@freezed
@JsonSerializable(explicitToJson: true)
class ForecastModel with _$ForecastModel {
  const factory ForecastModel({
    @JsonKey(name: 'data') required List<ForecastDayModel> forecastEntries,
  }) = _ForecastModel;

  factory ForecastModel.fromJson(Map<String, dynamic> json) {
    final rawData = json['data'];

    if (rawData == null || rawData is! List) {
      throw const FormatException(
          'Missing or invalid "data" field in forecast JSON');
    }

    return ForecastModel(
      forecastEntries: rawData
          .where((e) => e != null && e is Map<String, dynamic>) // ✅ Safe filter
          .map((e) => ForecastDayModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
  Map<String, dynamic> toJson() => _$ForecastModelToJson(this);
}
