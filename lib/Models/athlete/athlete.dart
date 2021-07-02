import 'package:json_annotation/json_annotation.dart';

part 'athlete.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Athlete {
  int? id;
  int? resourceState;
  String? firstname;
  String? lastname;

  Athlete({
    this.id,
    this.resourceState,
    this.firstname,
    this.lastname,
  });

  factory Athlete.fromJson(Map<String, dynamic> json) => _$AthleteFromJson(json);
  Map<String, dynamic> toJson() => _$AthleteToJson(this);
}
