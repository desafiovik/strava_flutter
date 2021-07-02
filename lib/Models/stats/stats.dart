import 'package:json_annotation/json_annotation.dart';
import 'package:strava_flutter/models/activity_totals/activity_totals.dart';
import 'package:strava_flutter/models/fault/fault.dart';
import 'package:strava_flutter/models/stats_totals/stats_totals.dart';

part 'stats.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Stats {
  Fault? fault;
  StatsTotals? recentRunTotals;
  ActivityTotals? allRunTotals;
  StatsTotals? recentSwimTotals;
  double? biggestRideDistance;
  ActivityTotals? ytdSwimTotals;
  ActivityTotals? allSwimTotals;
  StatsTotals? recentRideTotals;
  double? biggestClimbElevationGain;
  ActivityTotals? ytdRideTotals;
  ActivityTotals? allRideTotals;
  ActivityTotals? ytdRunTotals;

  Stats({
    Fault? fault,
    this.recentRunTotals,
    this.allRunTotals,
    this.recentSwimTotals,
    this.biggestRideDistance,
    this.ytdSwimTotals,
    this.allSwimTotals,
    this.recentRideTotals,
    this.biggestClimbElevationGain,
    this.ytdRideTotals,
    this.allRideTotals,
    this.ytdRunTotals,
  }) : fault = Fault(88, '');

  factory Stats.fromJson(Map<String, dynamic> json) => _$StatsFromJson(json);
  Map<String, dynamic> toJson() => _$StatsToJson(this);
}
