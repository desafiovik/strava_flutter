// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carte.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Carte _$CarteFromJson(Map<String, dynamic> json) {
  return Carte(
    id: json['id'] as String?,
    polyline: json['polyline'] as String?,
    resourceState: json['resource_state'] as int?,
    summaryPolyline: json['summary_polyline'] as String?,
  );
}

Map<String, dynamic> _$CarteToJson(Carte instance) => <String, dynamic>{
      'id': instance.id,
      'polyline': instance.polyline,
      'resource_state': instance.resourceState,
      'summary_polyline': instance.summaryPolyline,
    };
