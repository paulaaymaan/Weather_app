// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alert_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlertModelImpl _$$AlertModelImplFromJson(Map<String, dynamic> json) =>
    _$AlertModelImpl(
      title: json['title'] as String,
      severity: json['severity'] as String,
      description: json['description'] as String,
      effectiveUtc: DateTime.parse(json['effective_utc'] as String),
      expiresUtc: DateTime.parse(json['expires_utc'] as String),
      regions:
          (json['regions'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$AlertModelImplToJson(_$AlertModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'severity': instance.severity,
      'description': instance.description,
      'effective_utc': instance.effectiveUtc.toIso8601String(),
      'expires_utc': instance.expiresUtc.toIso8601String(),
      'regions': instance.regions,
    };
