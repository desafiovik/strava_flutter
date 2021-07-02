import 'package:json_annotation/json_annotation.dart';
import 'package:strava_flutter/models/activity_effort/activity_effort.dart';
import 'package:strava_flutter/models/athlete/athlete.dart';
import 'package:strava_flutter/models/fault/fault.dart';
import 'package:strava_flutter/models/segment_effort/segment_effort.dart';

part 'detailed_segment_effort.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class DetailedSegmentEffort {
  Fault? fault;
  int? id;
  int? resourceState;
  String? name;
  ActivityEffort? activity;
  Athlete? athlete;
  int? elapsedTime;
  String? startDate;
  String? startDateLocal;
  double? distance;
  int? movingTime;
  int? startIndex;
  int? endIndex;
  bool? deviceWatts;
  double? averageWatts;
  SegmentEffort? segment;

  int? komRank;
  int? prRank;
  List<dynamic>? achievements;

  DetailedSegmentEffort({
    Fault? fault,
    this.id,
    this.resourceState,
    this.name,
    this.activity,
    this.athlete,
    this.elapsedTime,
    this.startDate,
    this.startDateLocal,
    this.distance,
    this.movingTime,
    this.startIndex,
    this.endIndex,
    this.deviceWatts,
    this.averageWatts,
    this.segment,
    this.komRank,
    this.prRank,
    this.achievements,
  });

  factory DetailedSegmentEffort.fromJson(Map<String, dynamic> json) =>
      _$DetailedSegmentEffortFromJson(json);
  Map<String, dynamic> toJson() => _$DetailedSegmentEffortToJson(this);
}
