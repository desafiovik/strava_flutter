import 'package:json_annotation/json_annotation.dart';

part 'response_upload_activity.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class ResponseUploadActivity {
  int? id;
  String? externalId;
  String? error;
  String? status;
  int? activityId;

  ResponseUploadActivity(
    this.id,
    this.externalId,
    this.error,
    this.status,
    this.activityId,
  );

  factory ResponseUploadActivity.fromJson(Map<String, dynamic> json) =>
      _$ResponseUploadActivityFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseUploadActivityToJson(this);
}
