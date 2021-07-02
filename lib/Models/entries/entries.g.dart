// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Entries _$EntriesFromJson(Map<String, dynamic> json) {
  return Entries(
    athleteName: json['athlete_name'] as String?,
    elapsedTime: json['elapsed_time'] as int?,
    movingTime: json['moving_time'] as int?,
    startDate: json['start_date'] as String?,
    startDateLocal: json['start_date_local'] as String?,
    rank: json['rank'] as int?,
  );
}

Map<String, dynamic> _$EntriesToJson(Entries instance) => <String, dynamic>{
      'athlete_name': instance.athleteName,
      'elapsed_time': instance.elapsedTime,
      'moving_time': instance.movingTime,
      'start_date': instance.startDate,
      'start_date_local': instance.startDateLocal,
      'rank': instance.rank,
    };
