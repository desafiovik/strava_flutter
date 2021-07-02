// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detailed_segment_effort.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailedSegmentEffort _$DetailedSegmentEffortFromJson(
    Map<String, dynamic> json) {
  return DetailedSegmentEffort(
    fault: json['fault'] == null
        ? null
        : Fault.fromJson(json['fault'] as Map<String, dynamic>),
    id: json['id'] as int?,
    resourceState: json['resource_state'] as int?,
    name: json['name'] as String?,
    activity: json['activity'] == null
        ? null
        : ActivityEffort.fromJson(json['activity'] as Map<String, dynamic>),
    athlete: json['athlete'] == null
        ? null
        : Athlete.fromJson(json['athlete'] as Map<String, dynamic>),
    elapsedTime: json['elapsed_time'] as int?,
    startDate: json['start_date'] as String?,
    startDateLocal: json['start_date_local'] as String?,
    distance: (json['distance'] as num?)?.toDouble(),
    movingTime: json['moving_time'] as int?,
    startIndex: json['start_index'] as int?,
    endIndex: json['end_index'] as int?,
    deviceWatts: json['device_watts'] as bool?,
    averageWatts: (json['average_watts'] as num?)?.toDouble(),
    segment: json['segment'] == null
        ? null
        : SegmentEffort.fromJson(json['segment'] as Map<String, dynamic>),
    komRank: json['kom_rank'] as int?,
    prRank: json['pr_rank'] as int?,
    achievements: json['achievements'] as List<dynamic>?,
  );
}

Map<String, dynamic> _$DetailedSegmentEffortToJson(
        DetailedSegmentEffort instance) =>
    <String, dynamic>{
      'fault': instance.fault?.toJson(),
      'id': instance.id,
      'resource_state': instance.resourceState,
      'name': instance.name,
      'activity': instance.activity?.toJson(),
      'athlete': instance.athlete?.toJson(),
      'elapsed_time': instance.elapsedTime,
      'start_date': instance.startDate,
      'start_date_local': instance.startDateLocal,
      'distance': instance.distance,
      'moving_time': instance.movingTime,
      'start_index': instance.startIndex,
      'end_index': instance.endIndex,
      'device_watts': instance.deviceWatts,
      'average_watts': instance.averageWatts,
      'segment': instance.segment?.toJson(),
      'kom_rank': instance.komRank,
      'pr_rank': instance.prRank,
      'achievements': instance.achievements,
    };
