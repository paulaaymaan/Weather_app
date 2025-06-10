// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alert_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AlertEntity {
  String get title =>
      throw _privateConstructorUsedError; // Title of the alert (e.g., "Severe Thunderstorm Warning")
  String get severity =>
      throw _privateConstructorUsedError; // Severity level (e.g., "Watch", "Warning", "Advisory")
  String get description =>
      throw _privateConstructorUsedError; // Full description of the alert details
  DateTime get effectiveUtc =>
      throw _privateConstructorUsedError; // Start time of the alert (UTC)
  DateTime get expiresUtc =>
      throw _privateConstructorUsedError; // End time of the alert (UTC)
  List<String> get regions => throw _privateConstructorUsedError;

  /// Create a copy of AlertEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AlertEntityCopyWith<AlertEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlertEntityCopyWith<$Res> {
  factory $AlertEntityCopyWith(
          AlertEntity value, $Res Function(AlertEntity) then) =
      _$AlertEntityCopyWithImpl<$Res, AlertEntity>;
  @useResult
  $Res call(
      {String title,
      String severity,
      String description,
      DateTime effectiveUtc,
      DateTime expiresUtc,
      List<String> regions});
}

/// @nodoc
class _$AlertEntityCopyWithImpl<$Res, $Val extends AlertEntity>
    implements $AlertEntityCopyWith<$Res> {
  _$AlertEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AlertEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? severity = null,
    Object? description = null,
    Object? effectiveUtc = null,
    Object? expiresUtc = null,
    Object? regions = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      effectiveUtc: null == effectiveUtc
          ? _value.effectiveUtc
          : effectiveUtc // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiresUtc: null == expiresUtc
          ? _value.expiresUtc
          : expiresUtc // ignore: cast_nullable_to_non_nullable
              as DateTime,
      regions: null == regions
          ? _value.regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlertEntityImplCopyWith<$Res>
    implements $AlertEntityCopyWith<$Res> {
  factory _$$AlertEntityImplCopyWith(
          _$AlertEntityImpl value, $Res Function(_$AlertEntityImpl) then) =
      __$$AlertEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String severity,
      String description,
      DateTime effectiveUtc,
      DateTime expiresUtc,
      List<String> regions});
}

/// @nodoc
class __$$AlertEntityImplCopyWithImpl<$Res>
    extends _$AlertEntityCopyWithImpl<$Res, _$AlertEntityImpl>
    implements _$$AlertEntityImplCopyWith<$Res> {
  __$$AlertEntityImplCopyWithImpl(
      _$AlertEntityImpl _value, $Res Function(_$AlertEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AlertEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? severity = null,
    Object? description = null,
    Object? effectiveUtc = null,
    Object? expiresUtc = null,
    Object? regions = null,
  }) {
    return _then(_$AlertEntityImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      effectiveUtc: null == effectiveUtc
          ? _value.effectiveUtc
          : effectiveUtc // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiresUtc: null == expiresUtc
          ? _value.expiresUtc
          : expiresUtc // ignore: cast_nullable_to_non_nullable
              as DateTime,
      regions: null == regions
          ? _value._regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$AlertEntityImpl extends _AlertEntity {
  const _$AlertEntityImpl(
      {required this.title,
      required this.severity,
      required this.description,
      required this.effectiveUtc,
      required this.expiresUtc,
      required final List<String> regions})
      : _regions = regions,
        super._();

  @override
  final String title;
// Title of the alert (e.g., "Severe Thunderstorm Warning")
  @override
  final String severity;
// Severity level (e.g., "Watch", "Warning", "Advisory")
  @override
  final String description;
// Full description of the alert details
  @override
  final DateTime effectiveUtc;
// Start time of the alert (UTC)
  @override
  final DateTime expiresUtc;
// End time of the alert (UTC)
  final List<String> _regions;
// End time of the alert (UTC)
  @override
  List<String> get regions {
    if (_regions is EqualUnmodifiableListView) return _regions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_regions);
  }

  @override
  String toString() {
    return 'AlertEntity(title: $title, severity: $severity, description: $description, effectiveUtc: $effectiveUtc, expiresUtc: $expiresUtc, regions: $regions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlertEntityImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.effectiveUtc, effectiveUtc) ||
                other.effectiveUtc == effectiveUtc) &&
            (identical(other.expiresUtc, expiresUtc) ||
                other.expiresUtc == expiresUtc) &&
            const DeepCollectionEquality().equals(other._regions, _regions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, severity, description,
      effectiveUtc, expiresUtc, const DeepCollectionEquality().hash(_regions));

  /// Create a copy of AlertEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AlertEntityImplCopyWith<_$AlertEntityImpl> get copyWith =>
      __$$AlertEntityImplCopyWithImpl<_$AlertEntityImpl>(this, _$identity);
}

abstract class _AlertEntity extends AlertEntity {
  const factory _AlertEntity(
      {required final String title,
      required final String severity,
      required final String description,
      required final DateTime effectiveUtc,
      required final DateTime expiresUtc,
      required final List<String> regions}) = _$AlertEntityImpl;
  const _AlertEntity._() : super._();

  @override
  String get title; // Title of the alert (e.g., "Severe Thunderstorm Warning")
  @override
  String get severity; // Severity level (e.g., "Watch", "Warning", "Advisory")
  @override
  String get description; // Full description of the alert details
  @override
  DateTime get effectiveUtc; // Start time of the alert (UTC)
  @override
  DateTime get expiresUtc; // End time of the alert (UTC)
  @override
  List<String> get regions;

  /// Create a copy of AlertEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AlertEntityImplCopyWith<_$AlertEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
