// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alert_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AlertModel _$AlertModelFromJson(Map<String, dynamic> json) {
  return _AlertModel.fromJson(json);
}

/// @nodoc
mixin _$AlertModel {
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'severity')
  String get severity => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'effective_utc')
  DateTime get effectiveUtc => throw _privateConstructorUsedError;
  @JsonKey(name: 'expires_utc')
  DateTime get expiresUtc => throw _privateConstructorUsedError;
  @JsonKey(name: 'regions')
  List<String> get regions => throw _privateConstructorUsedError;

  /// Serializes this AlertModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AlertModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AlertModelCopyWith<AlertModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlertModelCopyWith<$Res> {
  factory $AlertModelCopyWith(
          AlertModel value, $Res Function(AlertModel) then) =
      _$AlertModelCopyWithImpl<$Res, AlertModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'severity') String severity,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'effective_utc') DateTime effectiveUtc,
      @JsonKey(name: 'expires_utc') DateTime expiresUtc,
      @JsonKey(name: 'regions') List<String> regions});
}

/// @nodoc
class _$AlertModelCopyWithImpl<$Res, $Val extends AlertModel>
    implements $AlertModelCopyWith<$Res> {
  _$AlertModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AlertModel
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
abstract class _$$AlertModelImplCopyWith<$Res>
    implements $AlertModelCopyWith<$Res> {
  factory _$$AlertModelImplCopyWith(
          _$AlertModelImpl value, $Res Function(_$AlertModelImpl) then) =
      __$$AlertModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'severity') String severity,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'effective_utc') DateTime effectiveUtc,
      @JsonKey(name: 'expires_utc') DateTime expiresUtc,
      @JsonKey(name: 'regions') List<String> regions});
}

/// @nodoc
class __$$AlertModelImplCopyWithImpl<$Res>
    extends _$AlertModelCopyWithImpl<$Res, _$AlertModelImpl>
    implements _$$AlertModelImplCopyWith<$Res> {
  __$$AlertModelImplCopyWithImpl(
      _$AlertModelImpl _value, $Res Function(_$AlertModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AlertModel
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
    return _then(_$AlertModelImpl(
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
@JsonSerializable()
class _$AlertModelImpl extends _AlertModel {
  const _$AlertModelImpl(
      {@JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'severity') required this.severity,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'effective_utc') required this.effectiveUtc,
      @JsonKey(name: 'expires_utc') required this.expiresUtc,
      @JsonKey(name: 'regions') required final List<String> regions})
      : _regions = regions,
        super._();

  factory _$AlertModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlertModelImplFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'severity')
  final String severity;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'effective_utc')
  final DateTime effectiveUtc;
  @override
  @JsonKey(name: 'expires_utc')
  final DateTime expiresUtc;
  final List<String> _regions;
  @override
  @JsonKey(name: 'regions')
  List<String> get regions {
    if (_regions is EqualUnmodifiableListView) return _regions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_regions);
  }

  @override
  String toString() {
    return 'AlertModel(title: $title, severity: $severity, description: $description, effectiveUtc: $effectiveUtc, expiresUtc: $expiresUtc, regions: $regions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlertModelImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, severity, description,
      effectiveUtc, expiresUtc, const DeepCollectionEquality().hash(_regions));

  /// Create a copy of AlertModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AlertModelImplCopyWith<_$AlertModelImpl> get copyWith =>
      __$$AlertModelImplCopyWithImpl<_$AlertModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlertModelImplToJson(
      this,
    );
  }
}

abstract class _AlertModel extends AlertModel {
  const factory _AlertModel(
          {@JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'severity') required final String severity,
          @JsonKey(name: 'description') required final String description,
          @JsonKey(name: 'effective_utc') required final DateTime effectiveUtc,
          @JsonKey(name: 'expires_utc') required final DateTime expiresUtc,
          @JsonKey(name: 'regions') required final List<String> regions}) =
      _$AlertModelImpl;
  const _AlertModel._() : super._();

  factory _AlertModel.fromJson(Map<String, dynamic> json) =
      _$AlertModelImpl.fromJson;

  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'severity')
  String get severity;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'effective_utc')
  DateTime get effectiveUtc;
  @override
  @JsonKey(name: 'expires_utc')
  DateTime get expiresUtc;
  @override
  @JsonKey(name: 'regions')
  List<String> get regions;

  /// Create a copy of AlertModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AlertModelImplCopyWith<_$AlertModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
