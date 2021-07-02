import 'package:json_annotation/json_annotation.dart';
import 'package:strava_flutter/models/distribution_bucket/distribution_bucket.dart';

part 'info_zones.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class InfoZones {
  bool? customZones;
  List<DistributionBucket>? zones;

  InfoZones();

  factory InfoZones.fromJson(Map<String, dynamic> json) => _$InfoZonesFromJson(json);
  Map<String, dynamic> toJson() => _$InfoZonesToJson(this);
}
