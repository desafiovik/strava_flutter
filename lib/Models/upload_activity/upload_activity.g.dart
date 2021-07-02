// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UploadActivity _$UploadActivityFromJson(Map<String, dynamic> json) {
  return UploadActivity(
    activityId: json['activity_id'] as int?,
    externalId: json['external_id'] as String?,
    id: json['id'] as int?,
    error: json['error'] as String?,
    status: json['status'] as String?,
  );
}

Map<String, dynamic> _$UploadActivityToJson(UploadActivity instance) =>
    <String, dynamic>{
      'activity_id': instance.activityId,
      'external_id': instance.externalId,
      'id': instance.id,
      'error': instance.error,
      'status': instance.status,
    };
