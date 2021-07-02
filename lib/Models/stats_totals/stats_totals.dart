import 'package:json_annotation/json_annotation.dart';

part 'stats_totals.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class StatsTotals {
  double? distance;
  int? achievementCount;
  int? count;
  int? elapsedTime;
  double? elevationGain;
  int? movingTime;

  StatsTotals({
    this.distance,
    this.achievementCount,
    this.count,
    this.elapsedTime,
    this.elevationGain,
    this.movingTime,
  });

  factory StatsTotals.fromJson(Map<String, dynamic> json) => _$StatsTotalsFromJson(json);
  Map<String, dynamic> toJson() => _$StatsTotalsToJson(this);
}
