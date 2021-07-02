import 'package:json_annotation/json_annotation.dart';
import 'package:strava_flutter/models/fault/fault.dart';

part 'running_race.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class RunningRace {
  Fault? fault;
  String? country;
  // It seems that routeIds is missing
  // List<int> routeIds;
  int? runningRaceType;
  double? distance;
  String? websiteUrl;
  String? city;
  String? startDateLocal;
  String? name;
  String? measurementPreference;
  int? id;
  String? state;
  String? url;

  RunningRace({
    Fault? fault,
    this.country,
    // this.routeIds,
    this.runningRaceType,
    this.distance,
    this.websiteUrl,
    this.city,
    this.startDateLocal,
    this.name,
    this.measurementPreference,
    this.id,
    this.state,
    this.url,
  }) : fault = Fault(99, '');

  factory RunningRace.fromJson(Map<String, dynamic> json) => _$RunningRaceFromJson(json);
  Map<String, dynamic> toJson() => _$RunningRaceToJson(this);
}
