import 'package:json_annotation/json_annotation.dart';
import 'package:strava_flutter/models/urls/urls.dart';

part 'primary.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Primary {
  int? id;
  String? uniqueId;
  Urls? urls;
  int? source;

  Primary({this.id, this.uniqueId, this.urls, this.source});

  factory Primary.fromJson(Map<String, dynamic> json) => _$PrimaryFromJson(json);
  Map<String, dynamic> toJson() => _$PrimaryToJson(this);
}
