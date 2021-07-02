import 'package:json_annotation/json_annotation.dart';

part 'activity_totals.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ActivityTotals {
  int? distance;
  int? achievementCount;
  int? count;
  int? elapsedTime;
  int? elevationGain;
  int? movingTime;

  ActivityTotals({
    this.distance,
    this.achievementCount,
    this.count,
    this.elapsedTime,
    this.elevationGain,
    this.movingTime,
  });

  factory ActivityTotals.fromJson(Map<String, dynamic> json) =>
      _$ActivityTotalsFromJson(json);
  Map<String, dynamic> toJson() => _$ActivityTotalsToJson(this);
}
