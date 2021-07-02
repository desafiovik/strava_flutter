import 'package:json_annotation/json_annotation.dart';
import 'package:strava_flutter/models/fault/fault.dart';

part 'gear.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Gear {
  Fault? fault;
  String? id;
  bool? primary;
  int? resourceState;
  int? distance;
  String? brandName;
  String? modelName;
  int? frameType;
  String? description;

  Gear({
    Fault? fault,
    this.id,
    this.primary,
    this.resourceState,
    this.distance,
    this.brandName,
    this.modelName,
    this.frameType,
    this.description,
  }) : fault = Fault(88, '');

  factory Gear.fromJson(Map<String, dynamic> json) => _$GearFromJson(json);
  Map<String, dynamic> toJson() => _$GearToJson(this);
}
