
import 'package:freezed_annotation/freezed_annotation.dart';
import 'alert_model.dart'; 

part 'alerts_model.freezed.dart';
part 'alerts_model.g.dart';


@freezed
class AlertsModel with _$AlertsModel {
  const factory AlertsModel({
 
    @JsonKey(name: 'alerts') required List<AlertModel> alerts,
  }) = _AlertsModel;

  factory AlertsModel.fromJson(Map<String, dynamic> json) =>
      _$AlertsModelFromJson(json);
}
