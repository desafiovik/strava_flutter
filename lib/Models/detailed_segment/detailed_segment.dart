import 'package:json_annotation/json_annotation.dart';
import 'package:strava_flutter/models/athlete_segment_stats/athlete_segment_stats.dart';
import 'package:strava_flutter/models/carte/carte.dart';
import 'package:strava_flutter/models/fault/fault.dart';

part 'detailed_segment.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class DetailedSegment {
  Fault? fault;
  int? id;
  int? resourceState;
  String? name;
  String? activityType;
  double? distance;
  double? averageGrade;
  double? maximumGrade;
  double? elevationHigh;
  double? elevationLow;
  List<double>? startLatlng;
  List<double>? endLatlng;
  double? startLatitude;
  double? startLongitude;
  double? endLatitude;
  double? endLongitude;
  int? climbCategory;
  String? city;
  String? state;
  String? country;
  bool? private;
  bool? hazardous;
  bool? starred;
  String? createdAt;
  String? updatedAt;
  double? totalElevationGain;
  Carte? map;
  int? effortCount;
  int? athleteCount;
  int? starCount;
  AthleteSegmentStats? athleteSegmentStats;

  DetailedSegment({
    Fault? fault,
    this.id,
    this.resourceState,
    this.name,
    this.activityType,
    this.distance,
    this.averageGrade,
    this.maximumGrade,
    this.elevationHigh,
    this.elevationLow,
    this.startLatlng,
    this.endLatlng,
    this.startLatitude,
    this.startLongitude,
    this.endLatitude,
    this.endLongitude,
    this.climbCategory,
    this.city,
    this.state,
    this.country,
    this.private,
    this.hazardous,
    this.starred,
    this.createdAt,
    this.updatedAt,
    this.totalElevationGain,
    this.map,
    this.effortCount,
    this.athleteCount,
    this.starCount,
    this.athleteSegmentStats,
  });

  factory DetailedSegment.fromJson(Map<String, dynamic> json) =>
      _$DetailedSegmentFromJson(json);
  Map<String, dynamic> toJson() => _$DetailedSegmentToJson(this);
}
