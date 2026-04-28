// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'symptom_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SymptomSession _$SymptomSessionFromJson(Map<String, dynamic> json) {
  return _SymptomSession.fromJson(json);
}

/// @nodoc
mixin _$SymptomSession {
  int get id => throw _privateConstructorUsedError;
  int get patientId => throw _privateConstructorUsedError;
  List<String> get symptoms => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  String get riskLevel =>
      throw _privateConstructorUsedError; // Low, Medium, High
  String get recommendations => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SymptomSessionCopyWith<SymptomSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SymptomSessionCopyWith<$Res> {
  factory $SymptomSessionCopyWith(
          SymptomSession value, $Res Function(SymptomSession) then) =
      _$SymptomSessionCopyWithImpl<$Res, SymptomSession>;
  @useResult
  $Res call(
      {int id,
      int patientId,
      List<String> symptoms,
      String duration,
      String riskLevel,
      String recommendations,
      DateTime timestamp});
}

/// @nodoc
class _$SymptomSessionCopyWithImpl<$Res, $Val extends SymptomSession>
    implements $SymptomSessionCopyWith<$Res> {
  _$SymptomSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? patientId = null,
    Object? symptoms = null,
    Object? duration = null,
    Object? riskLevel = null,
    Object? recommendations = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      patientId: null == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int,
      symptoms: null == symptoms
          ? _value.symptoms
          : symptoms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      riskLevel: null == riskLevel
          ? _value.riskLevel
          : riskLevel // ignore: cast_nullable_to_non_nullable
              as String,
      recommendations: null == recommendations
          ? _value.recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SymptomSessionImplCopyWith<$Res>
    implements $SymptomSessionCopyWith<$Res> {
  factory _$$SymptomSessionImplCopyWith(_$SymptomSessionImpl value,
          $Res Function(_$SymptomSessionImpl) then) =
      __$$SymptomSessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int patientId,
      List<String> symptoms,
      String duration,
      String riskLevel,
      String recommendations,
      DateTime timestamp});
}

/// @nodoc
class __$$SymptomSessionImplCopyWithImpl<$Res>
    extends _$SymptomSessionCopyWithImpl<$Res, _$SymptomSessionImpl>
    implements _$$SymptomSessionImplCopyWith<$Res> {
  __$$SymptomSessionImplCopyWithImpl(
      _$SymptomSessionImpl _value, $Res Function(_$SymptomSessionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? patientId = null,
    Object? symptoms = null,
    Object? duration = null,
    Object? riskLevel = null,
    Object? recommendations = null,
    Object? timestamp = null,
  }) {
    return _then(_$SymptomSessionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      patientId: null == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int,
      symptoms: null == symptoms
          ? _value._symptoms
          : symptoms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      riskLevel: null == riskLevel
          ? _value.riskLevel
          : riskLevel // ignore: cast_nullable_to_non_nullable
              as String,
      recommendations: null == recommendations
          ? _value.recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SymptomSessionImpl implements _SymptomSession {
  const _$SymptomSessionImpl(
      {required this.id,
      required this.patientId,
      required final List<String> symptoms,
      required this.duration,
      required this.riskLevel,
      required this.recommendations,
      required this.timestamp})
      : _symptoms = symptoms;

  factory _$SymptomSessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SymptomSessionImplFromJson(json);

  @override
  final int id;
  @override
  final int patientId;
  final List<String> _symptoms;
  @override
  List<String> get symptoms {
    if (_symptoms is EqualUnmodifiableListView) return _symptoms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_symptoms);
  }

  @override
  final String duration;
  @override
  final String riskLevel;
// Low, Medium, High
  @override
  final String recommendations;
  @override
  final DateTime timestamp;

  @override
  String toString() {
    return 'SymptomSession(id: $id, patientId: $patientId, symptoms: $symptoms, duration: $duration, riskLevel: $riskLevel, recommendations: $recommendations, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SymptomSessionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            const DeepCollectionEquality().equals(other._symptoms, _symptoms) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.riskLevel, riskLevel) ||
                other.riskLevel == riskLevel) &&
            (identical(other.recommendations, recommendations) ||
                other.recommendations == recommendations) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      patientId,
      const DeepCollectionEquality().hash(_symptoms),
      duration,
      riskLevel,
      recommendations,
      timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SymptomSessionImplCopyWith<_$SymptomSessionImpl> get copyWith =>
      __$$SymptomSessionImplCopyWithImpl<_$SymptomSessionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SymptomSessionImplToJson(
      this,
    );
  }
}

abstract class _SymptomSession implements SymptomSession {
  const factory _SymptomSession(
      {required final int id,
      required final int patientId,
      required final List<String> symptoms,
      required final String duration,
      required final String riskLevel,
      required final String recommendations,
      required final DateTime timestamp}) = _$SymptomSessionImpl;

  factory _SymptomSession.fromJson(Map<String, dynamic> json) =
      _$SymptomSessionImpl.fromJson;

  @override
  int get id;
  @override
  int get patientId;
  @override
  List<String> get symptoms;
  @override
  String get duration;
  @override
  String get riskLevel;
  @override // Low, Medium, High
  String get recommendations;
  @override
  DateTime get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$SymptomSessionImplCopyWith<_$SymptomSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
