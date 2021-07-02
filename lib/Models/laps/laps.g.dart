// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'laps.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Laps _$LapsFromJson(Map<String, dynamic> json) {
  return Laps(
    id: json['id'] as int?,
    resourceState: json['resource_state'] as int?,
    name: json['name'] as String?,
    activity: json['activity'] == null
        ? null
        : Activity.fromJson(json['activity'] as Map<String, dynamic>),
    athlete: json['athlete'] == null
        ? null
        : AthleteEffort.fromJson(json['athlete'] as Map<String, dynamic>),
    elapsedTime: json['elapsed_time'] as int?,
    movingTime: json['moving_time'] as int?,
    startDate: json['start_date'] as String?,
    startDateLocal: json['start_date_local'] as String?,
    distance: (json['distance'] as num?)?.toDouble(),
    startIndex: json['start_index'] as int?,
    endIndex: json['end_index'] as int?,
    totalElevationGain: (json['total_elevation_gain'] as num?)?.toDouble(),
    averageSpeed: (json['average_speed'] as num?)?.toDouble(),
    maxSpeed: (json['max_speed'] as num?)?.toDouble(),
    averageCadence: (json['average_cadence'] as num?)?.toDouble(),
    deviceWatts: json['device_watts'] as bool?,
    averageWatts: (json['average_watts'] as num?)?.toDouble(),
    lapIndex: json['lap_index'] as int?,
    split: json['split'] as int?,
  );
}

Map<String, dynamic> _$LapsToJson(Laps instance) => <String, dynamic>{
      'id': instance.id,
      'resource_state': instance.resourceState,
      'name': instance.name,
      'activity': instance.activity?.toJson(),
      'athlete': instance.athlete?.toJson(),
      'elapsed_time': instance.elapsedTime,
      'moving_time': instance.movingTime,
      'start_date': instance.startDate,
      'start_date_local': instance.startDateLocal,
      'distance': instance.distance,
      'start_index': instance.startIndex,
      'end_index': instance.endIndex,
      'total_elevation_gain': instance.totalElevationGain,
      'average_speed': instance.averageSpeed,
      'max_speed': instance.maxSpeed,
      'average_cadence': instance.averageCadence,
      'device_watts': instance.deviceWatts,
      'average_watts': instance.averageWatts,
      'lap_index': instance.lapIndex,
      'split': instance.split,
    };
