import 'package:json_annotation/json_annotation.dart';
import 'package:strava_flutter/models/athlete/athlete.dart';
import 'package:strava_flutter/models/fault/fault.dart';

part 'old_summary_activity.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class SummaryActivity {
  Fault? fault;
  int? id;
  int? resourceState;
  Athlete? athlete;
  String? name;
  double? distance;
  int? movingTime;
  int? elapsedTime;
  double? totalElevationGain;
  String? type;
  int? workoutType;

  SummaryActivity({
    this.id,
    this.resourceState,
    this.athlete,
    this.name,
    this.distance,
    this.movingTime,
    this.elapsedTime,
    this.totalElevationGain,
    this.type,
    this.workoutType,
  });

  factory SummaryActivity.fromJson(Map<String, dynamic> json) =>
      _$SummaryActivityFromJson(json);
  Map<String, dynamic> toJson() => _$SummaryActivityToJson(this);
}
