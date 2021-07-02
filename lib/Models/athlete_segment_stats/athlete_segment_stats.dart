import 'package:json_annotation/json_annotation.dart';

part 'athlete_segment_stats.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class AthleteSegmentStats {
  int? prElapsedTime;
  String? prDate;
  int? effortCount;

  AthleteSegmentStats({this.prElapsedTime, this.prDate, this.effortCount});

  factory AthleteSegmentStats.fromJson(Map<String, dynamic> json) =>
      _$AthleteSegmentStatsFromJson(json);
  Map<String, dynamic> toJson() => _$AthleteSegmentStatsToJson(this);
}
