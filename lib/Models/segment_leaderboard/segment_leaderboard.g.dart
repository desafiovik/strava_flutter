// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'segment_leaderboard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SegmentLeaderboard _$SegmentLeaderboardFromJson(Map<String, dynamic> json) {
  return SegmentLeaderboard(
    fault: json['fault'] == null
        ? null
        : Fault.fromJson(json['fault'] as Map<String, dynamic>),
    effortCount: json['effort_count'] as int?,
    entryCount: json['entry_count'] as int?,
    komType: json['kom_type'] as String?,
    entries: (json['entries'] as List<dynamic>?)
        ?.map((e) => Entries.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$SegmentLeaderboardToJson(SegmentLeaderboard instance) =>
    <String, dynamic>{
      'fault': instance.fault?.toJson(),
      'effort_count': instance.effortCount,
      'entry_count': instance.entryCount,
      'kom_type': instance.komType,
      'entries': instance.entries?.map((e) => e.toJson()).toList(),
    };
