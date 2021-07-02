
import 'package:json_annotation/json_annotation.dart';
import 'package:strava_flutter/models/fault/fault.dart';

part 'photo_activity.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class PhotoActivity {
  Fault? fault;
  int? id;
  String? uniqueId;
  String? urls;
  String? source;
  String? athleteId;
  String? activityId;
  String? activityName;
  String? resourceState;
  String? caption;
  String? createdAt;
  String? createdAtLocal;
  String? uploadedAt;
  String? sizes;
  bool? defaultPhoto;

  PhotoActivity({
    this.id,
    this.uniqueId,
    this.urls,
    this.source,
    this.athleteId,
    this.activityId,
    this.activityName,
    this.resourceState,
    this.caption,
    this.createdAt,
    this.createdAtLocal,
    this.uploadedAt,
    this.sizes,
    this.defaultPhoto,
  });

  factory PhotoActivity.fromJson(Map<String, dynamic> json) =>
      _$PhotoActivityFromJson(json);
  Map<String, dynamic> toJson() => _$PhotoActivityToJson(this);
}
