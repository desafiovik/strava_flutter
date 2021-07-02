// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shoes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Shoes _$ShoesFromJson(Map<String, dynamic> json) {
  return Shoes(
    id: json['id'] as String?,
    primary: json['primary'] as bool?,
    name: json['name'] as String?,
    resourceState: json['resource_state'] as int?,
    distance: (json['distance'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$ShoesToJson(Shoes instance) => <String, dynamic>{
      'id': instance.id,
      'primary': instance.primary,
      'name': instance.name,
      'resource_state': instance.resourceState,
      'distance': instance.distance,
    };
