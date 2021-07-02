// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_totals.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActivityTotals _$ActivityTotalsFromJson(Map<String, dynamic> json) {
  return ActivityTotals(
    distance: json['distance'] as int?,
    achievementCount: json['achievement_count'] as int?,
    count: json['count'] as int?,
    elapsedTime: json['elapsed_time'] as int?,
    elevationGain: json['elevation_gain'] as int?,
    movingTime: json['moving_time'] as int?,
  );
}

Map<String, dynamic> _$ActivityTotalsToJson(ActivityTotals instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'achievement_count': instance.achievementCount,
      'count': instance.count,
      'elapsed_time': instance.elapsedTime,
      'elevation_gain': instance.elevationGain,
      'moving_time': instance.movingTime,
    };
