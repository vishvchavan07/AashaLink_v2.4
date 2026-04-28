// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symptom_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SymptomSessionImpl _$$SymptomSessionImplFromJson(Map<String, dynamic> json) =>
    _$SymptomSessionImpl(
      id: (json['id'] as num).toInt(),
      patientId: (json['patientId'] as num).toInt(),
      symptoms:
          (json['symptoms'] as List<dynamic>).map((e) => e as String).toList(),
      duration: json['duration'] as String,
      riskLevel: json['riskLevel'] as String,
      recommendations: json['recommendations'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$SymptomSessionImplToJson(
        _$SymptomSessionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'patientId': instance.patientId,
      'symptoms': instance.symptoms,
      'duration': instance.duration,
      'riskLevel': instance.riskLevel,
      'recommendations': instance.recommendations,
      'timestamp': instance.timestamp.toIso8601String(),
    };
