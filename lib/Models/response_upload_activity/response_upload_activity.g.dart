// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_upload_activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseUploadActivity _$ResponseUploadActivityFromJson(
    Map<String, dynamic> json) {
  return ResponseUploadActivity(
    json['id'] as int?,
    json['external_id'] as String?,
    json['error'] as String?,
    json['status'] as String?,
    json['activity_id'] as int?,
  );
}

Map<String, dynamic> _$ResponseUploadActivityToJson(
        ResponseUploadActivity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'external_id': instance.externalId,
      'error': instance.error,
      'status': instance.status,
      'activity_id': instance.activityId,
    };
