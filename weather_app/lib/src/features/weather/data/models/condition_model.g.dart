// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'condition_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConditionModelImpl _$$ConditionModelImplFromJson(Map<String, dynamic> json) =>
    _$ConditionModelImpl(
      icon: json['icon'] as String,
      code: (json['code'] as num).toInt(),
      description: json['description'] as String,
    );

Map<String, dynamic> _$$ConditionModelImplToJson(
        _$ConditionModelImpl instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'code': instance.code,
      'description': instance.description,
    };
