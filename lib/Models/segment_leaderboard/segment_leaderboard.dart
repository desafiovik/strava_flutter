import 'package:json_annotation/json_annotation.dart';
import 'package:strava_flutter/models/entries/entries.dart';
import 'package:strava_flutter/models/fault/fault.dart';

part 'segment_leaderboard.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class SegmentLeaderboard {
  Fault? fault;
  int? effortCount;
  int? entryCount;
  String? komType;
  List<Entries>? entries;

  SegmentLeaderboard({
    this.fault,
    this.effortCount,
    this.entryCount,
    this.komType,
    this.entries,
  });

  factory SegmentLeaderboard.fromJson(Map<String, dynamic> json) =>
      _$SegmentLeaderboardFromJson(json);
  Map<String, dynamic> toJson() => _$SegmentLeaderboardToJson(this);
}
