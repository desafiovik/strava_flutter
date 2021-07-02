import 'package:json_annotation/json_annotation.dart';
import 'package:strava_flutter/models/activity/activity.dart';
import 'package:strava_flutter/models/athlete_effort/athlete_effort.dart';

part 'laps.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Laps {
  int? id;
  int? resourceState;
  String? name;
  Activity? activity;
  AthleteEffort? athlete;
  int? elapsedTime;
  int? movingTime;
  String? startDate;
  String? startDateLocal;
  double? distance;
  int? startIndex;
  int? endIndex;
  double? totalElevationGain;
  double? averageSpeed;
  double? maxSpeed;
  double? averageCadence;
  bool? deviceWatts;
  double? averageWatts;
  int? lapIndex;
  int? split;

  Laps({
    this.id,
    this.resourceState,
    this.name,
    this.activity,
    this.athlete,
    this.elapsedTime,
    this.movingTime,
    this.startDate,
    this.startDateLocal,
    this.distance,
    this.startIndex,
    this.endIndex,
    this.totalElevationGain,
    this.averageSpeed,
    this.maxSpeed,
    this.averageCadence,
    this.deviceWatts,
    this.averageWatts,
    this.lapIndex,
    this.split,
  });

  factory Laps.fromJson(Map<String, dynamic> json) => _$LapsFromJson(json);
  Map<String, dynamic> toJson() => _$LapsToJson(this);
}
