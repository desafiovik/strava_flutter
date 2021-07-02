// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gear.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Gear _$GearFromJson(Map<String, dynamic> json) {
  return Gear(
    fault: json['fault'] == null
        ? null
        : Fault.fromJson(json['fault'] as Map<String, dynamic>),
    id: json['id'] as String?,
    primary: json['primary'] as bool?,
    resourceState: json['resource_state'] as int?,
    distance: json['distance'] as int?,
    brandName: json['brand_name'] as String?,
    modelName: json['model_name'] as String?,
    frameType: json['frame_type'] as int?,
    description: json['description'] as String?,
  );
}

Map<String, dynamic> _$GearToJson(Gear instance) => <String, dynamic>{
      'fault': instance.fault?.toJson(),
      'id': instance.id,
      'primary': instance.primary,
      'resource_state': instance.resourceState,
      'distance': instance.distance,
      'brand_name': instance.brandName,
      'model_name': instance.modelName,
      'frame_type': instance.frameType,
      'description': instance.description,
    };
