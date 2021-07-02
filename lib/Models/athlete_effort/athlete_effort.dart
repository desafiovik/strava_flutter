import 'package:json_annotation/json_annotation.dart';

part 'athlete_effort.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class AthleteEffort {
  int? id;
  int? resourceState;

  AthleteEffort({
    this.id,
    this.resourceState,
  });

  factory AthleteEffort.fromJson(Map<String, dynamic> json) =>
      _$AthleteEffortFromJson(json);
  Map<String, dynamic> toJson() => _$AthleteEffortToJson(this);
}
