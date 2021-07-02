import 'package:json_annotation/json_annotation.dart';

part 'shoes.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Shoes {
  String? id;
  bool? primary;
  String? name;
  int? resourceState;
  double? distance;

  Shoes({
    this.id,
    this.primary,
    this.name,
    this.resourceState,
    this.distance,
  });

  factory Shoes.fromJson(Map<String, dynamic> json) => _$ShoesFromJson(json);
  Map<String, dynamic> toJson() => _$ShoesToJson(this);
}
