

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/alert_entity.dart'; 

part 'alert_model.freezed.dart';
part 'alert_model.g.dart';

@freezed
class AlertModel with _$AlertModel {
  const factory AlertModel({
    @JsonKey(name: 'title') required String title, 
    @JsonKey(name: 'severity')
    required String severity, 
    @JsonKey(name: 'description')
    required String description, 
    @JsonKey(name: 'effective_utc')
    required DateTime effectiveUtc, 
    @JsonKey(name: 'expires_utc')
    required DateTime expiresUtc, 
    @JsonKey(name: 'regions')
    required List<String> regions, 
  }) = _AlertModel;

  const AlertModel._();

  factory AlertModel.fromJson(Map<String, dynamic> json) =>
      _$AlertModelFromJson(json);

  AlertEntity toEntity() {
    return AlertEntity(
      title: this.title,
      severity: this.severity,
      description: this.description,
      effectiveUtc: this.effectiveUtc,
      expiresUtc: this.expiresUtc,
      regions: this.regions,
    );
  }
}
