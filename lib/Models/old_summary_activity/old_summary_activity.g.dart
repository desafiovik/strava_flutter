// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'old_summary_activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SummaryActivity _$SummaryActivityFromJson(Map<String, dynamic> json) {
  return SummaryActivity(
    id: json['id'] as int?,
    resourceState: json['resource_state'] as int?,
    athlete: json['athlete'] == null
        ? null
        : Athlete.fromJson(json['athlete'] as Map<String, dynamic>),
    name: json['name'] as String?,
    distance: (json['distance'] as num?)?.toDouble(),
    movingTime: json['moving_time'] as int?,
    elapsedTime: json['elapsed_time'] as int?,
    totalElevationGain: (json['total_elevation_gain'] as num?)?.toDouble(),
    type: json['type'] as String?,
    workoutType: json['workout_type'] as int?,
  )..fault = json['fault'] == null
      ? null
      : Fault.fromJson(json['fault'] as Map<String, dynamic>);
}

Map<String, dynamic> _$SummaryActivityToJson(SummaryActivity instance) =>
    <String, dynamic>{
      'fault': instance.fault?.toJson(),
      'id': instance.id,
      'resource_state': instance.resourceState,
      'athlete': instance.athlete?.toJson(),
      'name': instance.name,
      'distance': instance.distance,
      'moving_time': instance.movingTime,
      'elapsed_time': instance.elapsedTime,
      'total_elevation_gain': instance.totalElevationGain,
      'type': instance.type,
      'workout_type': instance.workoutType,
    };
