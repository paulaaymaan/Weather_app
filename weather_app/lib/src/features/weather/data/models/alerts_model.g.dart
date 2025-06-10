// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alerts_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlertsModelImpl _$$AlertsModelImplFromJson(Map<String, dynamic> json) =>
    _$AlertsModelImpl(
      alerts: (json['alerts'] as List<dynamic>)
          .map((e) => AlertModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AlertsModelImplToJson(_$AlertsModelImpl instance) =>
    <String, dynamic>{
      'alerts': instance.alerts,
    };
