// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_day_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForecastDayModel _$ForecastDayModelFromJson(Map<String, dynamic> json) {
  return _ForecastDayModel.fromJson(json);
}

/// @nodoc
mixin _$ForecastDayModel {
  @JsonKey(name: 'valid_date')
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_temp')
  double get maxTemp => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_temp')
  double get minTemp => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_spd')
  double get windSpeed => throw _privateConstructorUsedError;
  @JsonKey(name: 'rh')
  int get humidity => throw _privateConstructorUsedError;
  @JsonKey(name: 'pop')
  int get chanceOfPrecipitation => throw _privateConstructorUsedError;
  @JsonKey(name: 'uv')
  double? get uvIndex => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather')
  ConditionModel get condition => throw _privateConstructorUsedError;

  /// Serializes this ForecastDayModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ForecastDayModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForecastDayModelCopyWith<ForecastDayModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastDayModelCopyWith<$Res> {
  factory $ForecastDayModelCopyWith(
          ForecastDayModel value, $Res Function(ForecastDayModel) then) =
      _$ForecastDayModelCopyWithImpl<$Res, ForecastDayModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'valid_date') DateTime date,
      @JsonKey(name: 'max_temp') double maxTemp,
      @JsonKey(name: 'min_temp') double minTemp,
      @JsonKey(name: 'wind_spd') double windSpeed,
      @JsonKey(name: 'rh') int humidity,
      @JsonKey(name: 'pop') int chanceOfPrecipitation,
      @JsonKey(name: 'uv') double? uvIndex,
      @JsonKey(name: 'weather') ConditionModel condition});

  $ConditionModelCopyWith<$Res> get condition;
}

/// @nodoc
class _$ForecastDayModelCopyWithImpl<$Res, $Val extends ForecastDayModel>
    implements $ForecastDayModelCopyWith<$Res> {
  _$ForecastDayModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForecastDayModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? maxTemp = null,
    Object? minTemp = null,
    Object? windSpeed = null,
    Object? humidity = null,
    Object? chanceOfPrecipitation = null,
    Object? uvIndex = freezed,
    Object? condition = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      maxTemp: null == maxTemp
          ? _value.maxTemp
          : maxTemp // ignore: cast_nullable_to_non_nullable
              as double,
      minTemp: null == minTemp
          ? _value.minTemp
          : minTemp // ignore: cast_nullable_to_non_nullable
              as double,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      chanceOfPrecipitation: null == chanceOfPrecipitation
          ? _value.chanceOfPrecipitation
          : chanceOfPrecipitation // ignore: cast_nullable_to_non_nullable
              as int,
      uvIndex: freezed == uvIndex
          ? _value.uvIndex
          : uvIndex // ignore: cast_nullable_to_non_nullable
              as double?,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as ConditionModel,
    ) as $Val);
  }

  /// Create a copy of ForecastDayModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConditionModelCopyWith<$Res> get condition {
    return $ConditionModelCopyWith<$Res>(_value.condition, (value) {
      return _then(_value.copyWith(condition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForecastDayModelImplCopyWith<$Res>
    implements $ForecastDayModelCopyWith<$Res> {
  factory _$$ForecastDayModelImplCopyWith(_$ForecastDayModelImpl value,
          $Res Function(_$ForecastDayModelImpl) then) =
      __$$ForecastDayModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'valid_date') DateTime date,
      @JsonKey(name: 'max_temp') double maxTemp,
      @JsonKey(name: 'min_temp') double minTemp,
      @JsonKey(name: 'wind_spd') double windSpeed,
      @JsonKey(name: 'rh') int humidity,
      @JsonKey(name: 'pop') int chanceOfPrecipitation,
      @JsonKey(name: 'uv') double? uvIndex,
      @JsonKey(name: 'weather') ConditionModel condition});

  @override
  $ConditionModelCopyWith<$Res> get condition;
}

/// @nodoc
class __$$ForecastDayModelImplCopyWithImpl<$Res>
    extends _$ForecastDayModelCopyWithImpl<$Res, _$ForecastDayModelImpl>
    implements _$$ForecastDayModelImplCopyWith<$Res> {
  __$$ForecastDayModelImplCopyWithImpl(_$ForecastDayModelImpl _value,
      $Res Function(_$ForecastDayModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForecastDayModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? maxTemp = null,
    Object? minTemp = null,
    Object? windSpeed = null,
    Object? humidity = null,
    Object? chanceOfPrecipitation = null,
    Object? uvIndex = freezed,
    Object? condition = null,
  }) {
    return _then(_$ForecastDayModelImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      maxTemp: null == maxTemp
          ? _value.maxTemp
          : maxTemp // ignore: cast_nullable_to_non_nullable
              as double,
      minTemp: null == minTemp
          ? _value.minTemp
          : minTemp // ignore: cast_nullable_to_non_nullable
              as double,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      chanceOfPrecipitation: null == chanceOfPrecipitation
          ? _value.chanceOfPrecipitation
          : chanceOfPrecipitation // ignore: cast_nullable_to_non_nullable
              as int,
      uvIndex: freezed == uvIndex
          ? _value.uvIndex
          : uvIndex // ignore: cast_nullable_to_non_nullable
              as double?,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as ConditionModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastDayModelImpl extends _ForecastDayModel {
  const _$ForecastDayModelImpl(
      {@JsonKey(name: 'valid_date') required this.date,
      @JsonKey(name: 'max_temp') required this.maxTemp,
      @JsonKey(name: 'min_temp') required this.minTemp,
      @JsonKey(name: 'wind_spd') required this.windSpeed,
      @JsonKey(name: 'rh') required this.humidity,
      @JsonKey(name: 'pop') required this.chanceOfPrecipitation,
      @JsonKey(name: 'uv') this.uvIndex,
      @JsonKey(name: 'weather') required this.condition})
      : super._();

  factory _$ForecastDayModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastDayModelImplFromJson(json);

  @override
  @JsonKey(name: 'valid_date')
  final DateTime date;
  @override
  @JsonKey(name: 'max_temp')
  final double maxTemp;
  @override
  @JsonKey(name: 'min_temp')
  final double minTemp;
  @override
  @JsonKey(name: 'wind_spd')
  final double windSpeed;
  @override
  @JsonKey(name: 'rh')
  final int humidity;
  @override
  @JsonKey(name: 'pop')
  final int chanceOfPrecipitation;
  @override
  @JsonKey(name: 'uv')
  final double? uvIndex;
  @override
  @JsonKey(name: 'weather')
  final ConditionModel condition;

  @override
  String toString() {
    return 'ForecastDayModel(date: $date, maxTemp: $maxTemp, minTemp: $minTemp, windSpeed: $windSpeed, humidity: $humidity, chanceOfPrecipitation: $chanceOfPrecipitation, uvIndex: $uvIndex, condition: $condition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastDayModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.maxTemp, maxTemp) || other.maxTemp == maxTemp) &&
            (identical(other.minTemp, minTemp) || other.minTemp == minTemp) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.chanceOfPrecipitation, chanceOfPrecipitation) ||
                other.chanceOfPrecipitation == chanceOfPrecipitation) &&
            (identical(other.uvIndex, uvIndex) || other.uvIndex == uvIndex) &&
            (identical(other.condition, condition) ||
                other.condition == condition));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, maxTemp, minTemp,
      windSpeed, humidity, chanceOfPrecipitation, uvIndex, condition);

  /// Create a copy of ForecastDayModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastDayModelImplCopyWith<_$ForecastDayModelImpl> get copyWith =>
      __$$ForecastDayModelImplCopyWithImpl<_$ForecastDayModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastDayModelImplToJson(
      this,
    );
  }
}

abstract class _ForecastDayModel extends ForecastDayModel {
  const factory _ForecastDayModel(
          {@JsonKey(name: 'valid_date') required final DateTime date,
          @JsonKey(name: 'max_temp') required final double maxTemp,
          @JsonKey(name: 'min_temp') required final double minTemp,
          @JsonKey(name: 'wind_spd') required final double windSpeed,
          @JsonKey(name: 'rh') required final int humidity,
          @JsonKey(name: 'pop') required final int chanceOfPrecipitation,
          @JsonKey(name: 'uv') final double? uvIndex,
          @JsonKey(name: 'weather') required final ConditionModel condition}) =
      _$ForecastDayModelImpl;
  const _ForecastDayModel._() : super._();

  factory _ForecastDayModel.fromJson(Map<String, dynamic> json) =
      _$ForecastDayModelImpl.fromJson;

  @override
  @JsonKey(name: 'valid_date')
  DateTime get date;
  @override
  @JsonKey(name: 'max_temp')
  double get maxTemp;
  @override
  @JsonKey(name: 'min_temp')
  double get minTemp;
  @override
  @JsonKey(name: 'wind_spd')
  double get windSpeed;
  @override
  @JsonKey(name: 'rh')
  int get humidity;
  @override
  @JsonKey(name: 'pop')
  int get chanceOfPrecipitation;
  @override
  @JsonKey(name: 'uv')
  double? get uvIndex;
  @override
  @JsonKey(name: 'weather')
  ConditionModel get condition;

  /// Create a copy of ForecastDayModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForecastDayModelImplCopyWith<_$ForecastDayModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
