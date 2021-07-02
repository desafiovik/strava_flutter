// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'distribution_bucket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DistributionBucket _$DistributionBucketFromJson(Map<String, dynamic> json) {
  return DistributionBucket(
    max: json['max'] as int?,
    min: json['min'] as int?,
  );
}

Map<String, dynamic> _$DistributionBucketToJson(DistributionBucket instance) =>
    <String, dynamic>{
      'max': instance.max,
      'min': instance.min,
    };
