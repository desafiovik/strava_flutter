// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splits_metric.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SplitsMetric _$SplitsMetricFromJson(Map<String, dynamic> json) {
  return SplitsMetric(
    distance: (json['distance'] as num?)?.toDouble(),
    elapsedTime: json['elapsed_time'] as int?,
    elevationDifference: (json['elevation_difference'] as num?)?.toDouble(),
    movingTime: json['moving_time'] as int?,
    split: json['split'] as int?,
    averageSpeed: (json['average_speed'] as num?)?.toDouble(),
    paceZone: json['pace_zone'] as int?,
  );
}

Map<String, dynamic> _$SplitsMetricToJson(SplitsMetric instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'elapsed_time': instance.elapsedTime,
      'elevation_difference': instance.elevationDifference,
      'moving_time': instance.movingTime,
      'split': instance.split,
      'average_speed': instance.averageSpeed,
      'pace_zone': instance.paceZone,
    };
