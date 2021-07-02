// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'running_race.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RunningRace _$RunningRaceFromJson(Map<String, dynamic> json) {
  return RunningRace(
    fault: json['fault'] == null
        ? null
        : Fault.fromJson(json['fault'] as Map<String, dynamic>),
    country: json['country'] as String?,
    runningRaceType: json['running_race_type'] as int?,
    distance: (json['distance'] as num?)?.toDouble(),
    websiteUrl: json['website_url'] as String?,
    city: json['city'] as String?,
    startDateLocal: json['start_date_local'] as String?,
    name: json['name'] as String?,
    measurementPreference: json['measurement_preference'] as String?,
    id: json['id'] as int?,
    state: json['state'] as String?,
    url: json['url'] as String?,
  );
}

Map<String, dynamic> _$RunningRaceToJson(RunningRace instance) =>
    <String, dynamic>{
      'fault': instance.fault?.toJson(),
      'country': instance.country,
      'running_race_type': instance.runningRaceType,
      'distance': instance.distance,
      'website_url': instance.websiteUrl,
      'city': instance.city,
      'start_date_local': instance.startDateLocal,
      'name': instance.name,
      'measurement_preference': instance.measurementPreference,
      'id': instance.id,
      'state': instance.state,
      'url': instance.url,
    };
