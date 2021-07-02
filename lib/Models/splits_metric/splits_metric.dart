import 'package:json_annotation/json_annotation.dart';

part 'splits_metric.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class SplitsMetric {
  double? distance;
  int? elapsedTime;
  double? elevationDifference;
  int? movingTime;
  int? split;
  double? averageSpeed;
  int? paceZone;

  SplitsMetric({
    this.distance,
    this.elapsedTime,
    this.elevationDifference,
    this.movingTime,
    this.split,
    this.averageSpeed,
    this.paceZone,
  });

  factory SplitsMetric.fromJson(Map<String, dynamic> json) =>
      _$SplitsMetricFromJson(json);
  Map<String, dynamic> toJson() => _$SplitsMetricToJson(this);
}
