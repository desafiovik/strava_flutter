import 'package:json_annotation/json_annotation.dart';

part 'bikes.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Bikes {
  String? id;
  bool? primary;
  String? name;
  int? resourceState;
  double? distance;

  Bikes({
    this.id,
    this.primary,
    this.name,
    this.resourceState,
    this.distance,
  });

  factory Bikes.fromJson(Map<String, dynamic> json) => _$BikesFromJson(json);
  Map<String, dynamic> toJson() => _$BikesToJson(this);
}
