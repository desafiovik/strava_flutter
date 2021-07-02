import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:strava_flutter/models/athlete_effort/athlete_effort.dart';
import 'package:strava_flutter/models/fault/fault.dart';

part 'summary_activity.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class SummaryActivity {
  Fault? fault;
  int? id;
  int? resourceState;
  AthleteEffort? athlete;
  String? name;
  double? distance;
  int? movingTime;
  int? elapsedTime;
  double? totalElevationGain;
  String? type;
  int? workoutType;
  @JsonKey(fromJson: _parseDate)
  DateTime? startDate;
  @JsonKey(fromJson: _parseDate)
  DateTime? startDateLocal;

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
    this.startDate,
    this.startDateLocal,
  });

  factory SummaryActivity.fromJson(Map<String, dynamic> json) =>
      _$SummaryActivityFromJson(json);
  Map<String, dynamic> toJson() => _$SummaryActivityToJson(this);
}

DateTime _parseDate(String dateTimeToParse) {
  final DateFormat dateFormat = DateFormat('yyyy-MM-dd');
  final DateFormat timeFormat = DateFormat.Hms();

  final List<String> dateTimeSplit = dateTimeToParse.split('T');
  final List<String> timeSplit = dateTimeSplit[1].split('Z');
  final DateTime date = dateFormat.parse(dateTimeSplit[0]);
  final DateTime time = timeFormat.parse(timeSplit[0]);
  return DateTime(date.year, date.month, date.day, time.hour, time.minute, time.second);
}
