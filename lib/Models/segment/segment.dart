import 'package:json_annotation/json_annotation.dart';

part 'segment.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Segment {
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

  Segment({
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
  });

  factory Segment.fromJson(Map<String, dynamic> json) => _$SegmentFromJson(json);
  Map<String, dynamic> toJson() => _$SegmentToJson(this);
}
