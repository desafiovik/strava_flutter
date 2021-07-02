
import 'package:json_annotation/json_annotation.dart';

part 'carte.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Carte {
  String? id;
  String? polyline;
  int? resourceState;
  String? summaryPolyline;

  Carte({this.id, this.polyline, this.resourceState, this.summaryPolyline});

  factory Carte.fromJson(Map<String, dynamic> json) =>
      _$CarteFromJson(json);
  Map<String, dynamic> toJson() => _$CarteToJson(this);
}
