// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alerts_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AlertsModel _$AlertsModelFromJson(Map<String, dynamic> json) {
  return _AlertsModel.fromJson(json);
}

/// @nodoc
mixin _$AlertsModel {
  @JsonKey(name: 'alerts')
  List<AlertModel> get alerts => throw _privateConstructorUsedError;

  /// Serializes this AlertsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AlertsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AlertsModelCopyWith<AlertsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlertsModelCopyWith<$Res> {
  factory $AlertsModelCopyWith(
          AlertsModel value, $Res Function(AlertsModel) then) =
      _$AlertsModelCopyWithImpl<$Res, AlertsModel>;
  @useResult
  $Res call({@JsonKey(name: 'alerts') List<AlertModel> alerts});
}

/// @nodoc
class _$AlertsModelCopyWithImpl<$Res, $Val extends AlertsModel>
    implements $AlertsModelCopyWith<$Res> {
  _$AlertsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AlertsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alerts = null,
  }) {
    return _then(_value.copyWith(
      alerts: null == alerts
          ? _value.alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as List<AlertModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlertsModelImplCopyWith<$Res>
    implements $AlertsModelCopyWith<$Res> {
  factory _$$AlertsModelImplCopyWith(
          _$AlertsModelImpl value, $Res Function(_$AlertsModelImpl) then) =
      __$$AlertsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'alerts') List<AlertModel> alerts});
}

/// @nodoc
class __$$AlertsModelImplCopyWithImpl<$Res>
    extends _$AlertsModelCopyWithImpl<$Res, _$AlertsModelImpl>
    implements _$$AlertsModelImplCopyWith<$Res> {
  __$$AlertsModelImplCopyWithImpl(
      _$AlertsModelImpl _value, $Res Function(_$AlertsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AlertsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alerts = null,
  }) {
    return _then(_$AlertsModelImpl(
      alerts: null == alerts
          ? _value._alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as List<AlertModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlertsModelImpl implements _AlertsModel {
  const _$AlertsModelImpl(
      {@JsonKey(name: 'alerts') required final List<AlertModel> alerts})
      : _alerts = alerts;

  factory _$AlertsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlertsModelImplFromJson(json);

  final List<AlertModel> _alerts;
  @override
  @JsonKey(name: 'alerts')
  List<AlertModel> get alerts {
    if (_alerts is EqualUnmodifiableListView) return _alerts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_alerts);
  }

  @override
  String toString() {
    return 'AlertsModel(alerts: $alerts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlertsModelImpl &&
            const DeepCollectionEquality().equals(other._alerts, _alerts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_alerts));

  /// Create a copy of AlertsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AlertsModelImplCopyWith<_$AlertsModelImpl> get copyWith =>
      __$$AlertsModelImplCopyWithImpl<_$AlertsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlertsModelImplToJson(
      this,
    );
  }
}

abstract class _AlertsModel implements AlertsModel {
  const factory _AlertsModel(
          {@JsonKey(name: 'alerts') required final List<AlertModel> alerts}) =
      _$AlertsModelImpl;

  factory _AlertsModel.fromJson(Map<String, dynamic> json) =
      _$AlertsModelImpl.fromJson;

  @override
  @JsonKey(name: 'alerts')
  List<AlertModel> get alerts;

  /// Create a copy of AlertsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AlertsModelImplCopyWith<_$AlertsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
