// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'segment_effort.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SegmentEffort _$SegmentEffortFromJson(Map<String, dynamic> json) {
  return SegmentEffort(
    fault: json['fault'] == null
        ? null
        : Fault.fromJson(json['fault'] as Map<String, dynamic>),
    id: json['id'] as int?,
    resourceState: json['resource_state'] as int?,
    name: json['name'] as String?,
    activityType: json['activity_type'] as String?,
    distance: (json['distance'] as num?)?.toDouble(),
    averageGrade: (json['average_grade'] as num?)?.toDouble(),
    maximumGrade: (json['maximum_grade'] as num?)?.toDouble(),
    elevationHigh: (json['elevation_high'] as num?)?.toDouble(),
    elevationLow: (json['elevation_low'] as num?)?.toDouble(),
    startLatlng: (json['start_latlng'] as List<dynamic>?)
        ?.map((e) => (e as num).toDouble())
        .toList(),
    endLatlng: (json['end_latlng'] as List<dynamic>?)
        ?.map((e) => (e as num).toDouble())
        .toList(),
    startLatitude: (json['start_latitude'] as num?)?.toDouble(),
    startLongitude: (json['start_longitude'] as num?)?.toDouble(),
    endLatitude: (json['end_latitude'] as num?)?.toDouble(),
    endLongitude: (json['end_longitude'] as num?)?.toDouble(),
    climbCategory: json['climb_category'] as int?,
    city: json['city'] as String?,
    state: json['state'] as String?,
    country: json['country'] as String?,
    private: json['private'] as bool?,
    hazardous: json['hazardous'] as bool?,
    starred: json['starred'] as bool?,
  );
}

Map<String, dynamic> _$SegmentEffortToJson(SegmentEffort instance) =>
    <String, dynamic>{
      'fault': instance.fault?.toJson(),
      'id': instance.id,
      'resource_state': instance.resourceState,
      'name': instance.name,
      'activity_type': instance.activityType,
      'distance': instance.distance,
      'average_grade': instance.averageGrade,
      'maximum_grade': instance.maximumGrade,
      'elevation_high': instance.elevationHigh,
      'elevation_low': instance.elevationLow,
      'start_latlng': instance.startLatlng,
      'end_latlng': instance.endLatlng,
      'start_latitude': instance.startLatitude,
      'start_longitude': instance.startLongitude,
      'end_latitude': instance.endLatitude,
      'end_longitude': instance.endLongitude,
      'climb_category': instance.climbCategory,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'private': instance.private,
      'hazardous': instance.hazardous,
      'starred': instance.starred,
    };
