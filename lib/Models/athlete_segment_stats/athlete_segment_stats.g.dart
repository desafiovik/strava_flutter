// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'athlete_segment_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AthleteSegmentStats _$AthleteSegmentStatsFromJson(Map<String, dynamic> json) {
  return AthleteSegmentStats(
    prElapsedTime: json['pr_elapsed_time'] as int?,
    prDate: json['pr_date'] as String?,
    effortCount: json['effort_count'] as int?,
  );
}

Map<String, dynamic> _$AthleteSegmentStatsToJson(
        AthleteSegmentStats instance) =>
    <String, dynamic>{
      'pr_elapsed_time': instance.prElapsedTime,
      'pr_date': instance.prDate,
      'effort_count': instance.effortCount,
    };
