// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'segments_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SegmentsList _$SegmentsListFromJson(Map<String, dynamic> json) {
  return SegmentsList(
    segments: (json['segments'] as List<dynamic>?)
        ?.map((e) => SummarySegment.fromJson(e as Map<String, dynamic>))
        .toList(),
  )..fault = json['fault'] == null
      ? null
      : Fault.fromJson(json['fault'] as Map<String, dynamic>);
}

Map<String, dynamic> _$SegmentsListToJson(SegmentsList instance) =>
    <String, dynamic>{
      'fault': instance.fault?.toJson(),
      'segments': instance.segments?.map((e) => e.toJson()).toList(),
    };
