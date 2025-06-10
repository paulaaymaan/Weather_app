// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hourly_forecast_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HourlyForecastModel {
  @JsonKey(name: 'data')
  List<HourlyEntryModel> get hourlyEntries =>
      throw _privateConstructorUsedError;

  /// Create a copy of HourlyForecastModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HourlyForecastModelCopyWith<HourlyForecastModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourlyForecastModelCopyWith<$Res> {
  factory $HourlyForecastModelCopyWith(
          HourlyForecastModel value, $Res Function(HourlyForecastModel) then) =
      _$HourlyForecastModelCopyWithImpl<$Res, HourlyForecastModel>;
  @useResult
  $Res call({@JsonKey(name: 'data') List<HourlyEntryModel> hourlyEntries});
}

/// @nodoc
class _$HourlyForecastModelCopyWithImpl<$Res, $Val extends HourlyForecastModel>
    implements $HourlyForecastModelCopyWith<$Res> {
  _$HourlyForecastModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HourlyForecastModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hourlyEntries = null,
  }) {
    return _then(_value.copyWith(
      hourlyEntries: null == hourlyEntries
          ? _value.hourlyEntries
          : hourlyEntries // ignore: cast_nullable_to_non_nullable
              as List<HourlyEntryModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HourlyForecastModelImplCopyWith<$Res>
    implements $HourlyForecastModelCopyWith<$Res> {
  factory _$$HourlyForecastModelImplCopyWith(_$HourlyForecastModelImpl value,
          $Res Function(_$HourlyForecastModelImpl) then) =
      __$$HourlyForecastModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'data') List<HourlyEntryModel> hourlyEntries});
}

/// @nodoc
class __$$HourlyForecastModelImplCopyWithImpl<$Res>
    extends _$HourlyForecastModelCopyWithImpl<$Res, _$HourlyForecastModelImpl>
    implements _$$HourlyForecastModelImplCopyWith<$Res> {
  __$$HourlyForecastModelImplCopyWithImpl(_$HourlyForecastModelImpl _value,
      $Res Function(_$HourlyForecastModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of HourlyForecastModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hourlyEntries = null,
  }) {
    return _then(_$HourlyForecastModelImpl(
      hourlyEntries: null == hourlyEntries
          ? _value._hourlyEntries
          : hourlyEntries // ignore: cast_nullable_to_non_nullable
              as List<HourlyEntryModel>,
    ));
  }
}

/// @nodoc

class _$HourlyForecastModelImpl implements _HourlyForecastModel {
  const _$HourlyForecastModelImpl(
      {@JsonKey(name: 'data')
      required final List<HourlyEntryModel> hourlyEntries})
      : _hourlyEntries = hourlyEntries;

  final List<HourlyEntryModel> _hourlyEntries;
  @override
  @JsonKey(name: 'data')
  List<HourlyEntryModel> get hourlyEntries {
    if (_hourlyEntries is EqualUnmodifiableListView) return _hourlyEntries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hourlyEntries);
  }

  @override
  String toString() {
    return 'HourlyForecastModel(hourlyEntries: $hourlyEntries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HourlyForecastModelImpl &&
            const DeepCollectionEquality()
                .equals(other._hourlyEntries, _hourlyEntries));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_hourlyEntries));

  /// Create a copy of HourlyForecastModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HourlyForecastModelImplCopyWith<_$HourlyForecastModelImpl> get copyWith =>
      __$$HourlyForecastModelImplCopyWithImpl<_$HourlyForecastModelImpl>(
          this, _$identity);
}

abstract class _HourlyForecastModel implements HourlyForecastModel {
  const factory _HourlyForecastModel(
          {@JsonKey(name: 'data')
          required final List<HourlyEntryModel> hourlyEntries}) =
      _$HourlyForecastModelImpl;

  @override
  @JsonKey(name: 'data')
  List<HourlyEntryModel> get hourlyEntries;

  /// Create a copy of HourlyForecastModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HourlyForecastModelImplCopyWith<_$HourlyForecastModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
