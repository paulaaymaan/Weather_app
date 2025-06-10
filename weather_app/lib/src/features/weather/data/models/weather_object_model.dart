import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'condition_model.dart'; 

part 'weather_object_model.freezed.dart';
part 'weather_object_model.g.dart';


@freezed
class WeatherObjectModel with _$WeatherObjectModel {
  const factory WeatherObjectModel({
    required String icon, 
    required int code, 
    required String description, 
  }) = _WeatherObjectModel;

  factory WeatherObjectModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherObjectModelFromJson(json);
}
