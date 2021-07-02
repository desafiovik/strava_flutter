// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Photos _$PhotosFromJson(Map<String, dynamic> json) {
  return Photos(
    primary: json['primary'] == null
        ? null
        : Primary.fromJson(json['primary'] as Map<String, dynamic>),
    usePrimaryPhoto: json['use_primary_photo'] as bool?,
    count: json['count'] as int?,
  );
}

Map<String, dynamic> _$PhotosToJson(Photos instance) => <String, dynamic>{
      'primary': instance.primary?.toJson(),
      'use_primary_photo': instance.usePrimaryPhoto,
      'count': instance.count,
    };
