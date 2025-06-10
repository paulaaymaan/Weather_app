// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ForecastModel {
  @JsonKey(name: 'data')
  List<ForecastDayModel> get forecastEntries =>
      throw _privateConstructorUsedError;

  /// Create a copy of ForecastModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForecastModelCopyWith<ForecastModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastModelCopyWith<$Res> {
  factory $ForecastModelCopyWith(
          ForecastModel value, $Res Function(ForecastModel) then) =
      _$ForecastModelCopyWithImpl<$Res, ForecastModel>;
  @useResult
  $Res call({@JsonKey(name: 'data') List<ForecastDayModel> forecastEntries});
}

/// @nodoc
class _$ForecastModelCopyWithImpl<$Res, $Val extends ForecastModel>
    implements $ForecastModelCopyWith<$Res> {
  _$ForecastModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForecastModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forecastEntries = null,
  }) {
    return _then(_value.copyWith(
      forecastEntries: null == forecastEntries
          ? _value.forecastEntries
          : forecastEntries // ignore: cast_nullable_to_non_nullable
              as List<ForecastDayModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForecastModelImplCopyWith<$Res>
    implements $ForecastModelCopyWith<$Res> {
  factory _$$ForecastModelImplCopyWith(
          _$ForecastModelImpl value, $Res Function(_$ForecastModelImpl) then) =
      __$$ForecastModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'data') List<ForecastDayModel> forecastEntries});
}

/// @nodoc
class __$$ForecastModelImplCopyWithImpl<$Res>
    extends _$ForecastModelCopyWithImpl<$Res, _$ForecastModelImpl>
    implements _$$ForecastModelImplCopyWith<$Res> {
  __$$ForecastModelImplCopyWithImpl(
      _$ForecastModelImpl _value, $Res Function(_$ForecastModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForecastModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forecastEntries = null,
  }) {
    return _then(_$ForecastModelImpl(
      forecastEntries: null == forecastEntries
          ? _value._forecastEntries
          : forecastEntries // ignore: cast_nullable_to_non_nullable
              as List<ForecastDayModel>,
    ));
  }
}

/// @nodoc

class _$ForecastModelImpl implements _ForecastModel {
  const _$ForecastModelImpl(
      {@JsonKey(name: 'data')
      required final List<ForecastDayModel> forecastEntries})
      : _forecastEntries = forecastEntries;

  final List<ForecastDayModel> _forecastEntries;
  @override
  @JsonKey(name: 'data')
  List<ForecastDayModel> get forecastEntries {
    if (_forecastEntries is EqualUnmodifiableListView) return _forecastEntries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_forecastEntries);
  }

  @override
  String toString() {
    return 'ForecastModel(forecastEntries: $forecastEntries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastModelImpl &&
            const DeepCollectionEquality()
                .equals(other._forecastEntries, _forecastEntries));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_forecastEntries));

  /// Create a copy of ForecastModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastModelImplCopyWith<_$ForecastModelImpl> get copyWith =>
      __$$ForecastModelImplCopyWithImpl<_$ForecastModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}

abstract class _ForecastModel implements ForecastModel {
  const factory _ForecastModel(
          {@JsonKey(name: 'data')
          required final List<ForecastDayModel> forecastEntries}) =
      _$ForecastModelImpl;

  @override
  @JsonKey(name: 'data')
  List<ForecastDayModel> get forecastEntries;

  /// Create a copy of ForecastModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForecastModelImplCopyWith<_$ForecastModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
