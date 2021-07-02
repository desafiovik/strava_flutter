import 'package:json_annotation/json_annotation.dart';
import 'package:strava_flutter/models/fault/fault.dart';

part 'summary_athlete.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class SummaryAthlete {
  Fault? fault;
  int? resourceState;
  String? firstname;
  String? lastname;
  String? membership;
  bool? admin;
  bool? owner;
  int? id;

  SummaryAthlete({
    this.fault,
    this.resourceState,
    this.firstname,
    this.lastname,
    this.membership,
    this.admin,
    this.owner,
    this.id,
  });

  factory SummaryAthlete.fromJson(Map<String, dynamic> json) =>
      _$SummaryAthleteFromJson(json);
  Map<String, dynamic> toJson() => _$SummaryAthleteToJson(this);
}
