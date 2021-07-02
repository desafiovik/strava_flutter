// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_totals.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StatsTotals _$StatsTotalsFromJson(Map<String, dynamic> json) {
  return StatsTotals(
    distance: (json['distance'] as num?)?.toDouble(),
    achievementCount: json['achievement_count'] as int?,
    count: json['count'] as int?,
    elapsedTime: json['elapsed_time'] as int?,
    elevationGain: (json['elevation_gain'] as num?)?.toDouble(),
    movingTime: json['moving_time'] as int?,
  );
}

Map<String, dynamic> _$StatsTotalsToJson(StatsTotals instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'achievement_count': instance.achievementCount,
      'count': instance.count,
      'elapsed_time': instance.elapsedTime,
      'elevation_gain': instance.elevationGain,
      'moving_time': instance.movingTime,
    };
