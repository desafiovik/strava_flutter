// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bikes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Bikes _$BikesFromJson(Map<String, dynamic> json) {
  return Bikes(
    id: json['id'] as String?,
    primary: json['primary'] as bool?,
    name: json['name'] as String?,
    resourceState: json['resource_state'] as int?,
    distance: (json['distance'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$BikesToJson(Bikes instance) => <String, dynamic>{
      'id': instance.id,
      'primary': instance.primary,
      'name': instance.name,
      'resource_state': instance.resourceState,
      'distance': instance.distance,
    };
