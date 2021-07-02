import 'package:json_annotation/json_annotation.dart';
import 'package:strava_flutter/models/fault/fault.dart';
import 'package:strava_flutter/models/summary_segment/summary_segment.dart';

part 'segments_list.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class SegmentsList {
  Fault? fault;
  final List<SummarySegment>? segments;

  SegmentsList({this.segments});

  factory SegmentsList.fromJson(Map<String, dynamic> json) =>
      _$SegmentsListFromJson(json);
  Map<String, dynamic> toJson() => _$SegmentsListToJson(this);
}
