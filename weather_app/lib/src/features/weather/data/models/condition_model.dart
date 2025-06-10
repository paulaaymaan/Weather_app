import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'condition_model.freezed.dart';
part 'condition_model.g.dart';

@freezed
class ConditionModel with _$ConditionModel {
  const factory ConditionModel({
    required String icon, 
    required int code, 
    required String description, 
  }) = _ConditionModel;

  factory ConditionModel.fromJson(Map<String, dynamic> json) =>
      _$ConditionModelFromJson(json);
}
