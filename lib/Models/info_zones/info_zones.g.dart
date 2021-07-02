// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_zones.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InfoZones _$InfoZonesFromJson(Map<String, dynamic> json) {
  return InfoZones()
    ..customZones = json['custom_zones'] as bool?
    ..zones = (json['zones'] as List<dynamic>?)
        ?.map((e) => DistributionBucket.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$InfoZonesToJson(InfoZones instance) => <String, dynamic>{
      'custom_zones': instance.customZones,
      'zones': instance.zones?.map((e) => e.toJson()).toList(),
    };
