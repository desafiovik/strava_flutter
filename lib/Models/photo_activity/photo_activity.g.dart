// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhotoActivity _$PhotoActivityFromJson(Map<String, dynamic> json) {
  return PhotoActivity(
    id: json['id'] as int?,
    uniqueId: json['unique_id'] as String?,
    urls: json['urls'] as String?,
    source: json['source'] as String?,
    athleteId: json['athlete_id'] as String?,
    activityId: json['activity_id'] as String?,
    activityName: json['activity_name'] as String?,
    resourceState: json['resource_state'] as String?,
    caption: json['caption'] as String?,
    createdAt: json['created_at'] as String?,
    createdAtLocal: json['created_at_local'] as String?,
    uploadedAt: json['uploaded_at'] as String?,
    sizes: json['sizes'] as String?,
    defaultPhoto: json['default_photo'] as bool?,
  )..fault = json['fault'] == null
      ? null
      : Fault.fromJson(json['fault'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PhotoActivityToJson(PhotoActivity instance) =>
    <String, dynamic>{
      'fault': instance.fault?.toJson(),
      'id': instance.id,
      'unique_id': instance.uniqueId,
      'urls': instance.urls,
      'source': instance.source,
      'athlete_id': instance.athleteId,
      'activity_id': instance.activityId,
      'activity_name': instance.activityName,
      'resource_state': instance.resourceState,
      'caption': instance.caption,
      'created_at': instance.createdAt,
      'created_at_local': instance.createdAtLocal,
      'uploaded_at': instance.uploadedAt,
      'sizes': instance.sizes,
      'default_photo': instance.defaultPhoto,
    };
