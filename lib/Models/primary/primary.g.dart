// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'primary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Primary _$PrimaryFromJson(Map<String, dynamic> json) {
  return Primary(
    id: json['id'] as int?,
    uniqueId: json['unique_id'] as String?,
    urls: json['urls'] == null
        ? null
        : Urls.fromJson(json['urls'] as Map<String, dynamic>),
    source: json['source'] as int?,
  );
}

Map<String, dynamic> _$PrimaryToJson(Primary instance) => <String, dynamic>{
      'id': instance.id,
      'unique_id': instance.uniqueId,
      'urls': instance.urls?.toJson(),
      'source': instance.source,
    };
