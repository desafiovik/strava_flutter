// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Stats _$StatsFromJson(Map<String, dynamic> json) {
  return Stats(
    fault: json['fault'] == null
        ? null
        : Fault.fromJson(json['fault'] as Map<String, dynamic>),
    recentRunTotals: json['recent_run_totals'] == null
        ? null
        : StatsTotals.fromJson(
            json['recent_run_totals'] as Map<String, dynamic>),
    allRunTotals: json['all_run_totals'] == null
        ? null
        : ActivityTotals.fromJson(
            json['all_run_totals'] as Map<String, dynamic>),
    recentSwimTotals: json['recent_swim_totals'] == null
        ? null
        : StatsTotals.fromJson(
            json['recent_swim_totals'] as Map<String, dynamic>),
    biggestRideDistance: (json['biggest_ride_distance'] as num?)?.toDouble(),
    ytdSwimTotals: json['ytd_swim_totals'] == null
        ? null
        : ActivityTotals.fromJson(
            json['ytd_swim_totals'] as Map<String, dynamic>),
    allSwimTotals: json['all_swim_totals'] == null
        ? null
        : ActivityTotals.fromJson(
            json['all_swim_totals'] as Map<String, dynamic>),
    recentRideTotals: json['recent_ride_totals'] == null
        ? null
        : StatsTotals.fromJson(
            json['recent_ride_totals'] as Map<String, dynamic>),
    biggestClimbElevationGain:
        (json['biggest_climb_elevation_gain'] as num?)?.toDouble(),
    ytdRideTotals: json['ytd_ride_totals'] == null
        ? null
        : ActivityTotals.fromJson(
            json['ytd_ride_totals'] as Map<String, dynamic>),
    allRideTotals: json['all_ride_totals'] == null
        ? null
        : ActivityTotals.fromJson(
            json['all_ride_totals'] as Map<String, dynamic>),
    ytdRunTotals: json['ytd_run_totals'] == null
        ? null
        : ActivityTotals.fromJson(
            json['ytd_run_totals'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$StatsToJson(Stats instance) => <String, dynamic>{
      'fault': instance.fault?.toJson(),
      'recent_run_totals': instance.recentRunTotals?.toJson(),
      'all_run_totals': instance.allRunTotals?.toJson(),
      'recent_swim_totals': instance.recentSwimTotals?.toJson(),
      'biggest_ride_distance': instance.biggestRideDistance,
      'ytd_swim_totals': instance.ytdSwimTotals?.toJson(),
      'all_swim_totals': instance.allSwimTotals?.toJson(),
      'recent_ride_totals': instance.recentRideTotals?.toJson(),
      'biggest_climb_elevation_gain': instance.biggestClimbElevationGain,
      'ytd_ride_totals': instance.ytdRideTotals?.toJson(),
      'all_ride_totals': instance.allRideTotals?.toJson(),
      'ytd_run_totals': instance.ytdRunTotals?.toJson(),
    };
