import 'package:json_annotation/json_annotation.dart';

part 'activity_effort.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ActivityEffort {
  int? id;
  int? resourceState;

  ActivityEffort({
    this.id,
    this.resourceState,
  });

  factory ActivityEffort.fromJson(Map<String, dynamic> json) =>
      _$ActivityEffortFromJson(json);
  Map<String, dynamic> toJson() => _$ActivityEffortToJson(this);
}
