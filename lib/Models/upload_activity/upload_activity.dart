import 'package:json_annotation/json_annotation.dart';

part 'upload_activity.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class UploadActivity {
  int? activityId;
  String? externalId;
  int? id;
  String? error;
  String? status;

  UploadActivity({
    this.activityId,
    this.externalId,
    this.id,
    this.error,
    this.status,
  });

  factory UploadActivity.fromJson(Map<String, dynamic> json) =>
      _$UploadActivityFromJson(json);
  Map<String, dynamic> toJson() => _$UploadActivityToJson(this);
}
