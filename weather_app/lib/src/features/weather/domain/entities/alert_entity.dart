
import 'package:freezed_annotation/freezed_annotation.dart';

part 'alert_entity.freezed.dart';


@freezed
class AlertEntity with _$AlertEntity {
  const factory AlertEntity({
    required String
        title, 
    required String
        severity, 
    required String description, 
    required DateTime effectiveUtc, 
    required DateTime expiresUtc, 
    required List<String> regions, 
  }) = _AlertEntity;

  const AlertEntity._(); 


  String get effectiveTimeDisplay => effectiveUtc
      .toLocal()
      .toString(); 
  String get expiresTimeDisplay =>
      expiresUtc.toLocal().toString(); 

  String get regionsDisplay => regions.join(', ');
}
