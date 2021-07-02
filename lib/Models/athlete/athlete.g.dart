// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'athlete.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Athlete _$AthleteFromJson(Map<String, dynamic> json) {
  return Athlete(
    id: json['id'] as int?,
    resourceState: json['resource_state'] as int?,
    firstname: json['firstname'] as String?,
    lastname: json['lastname'] as String?,
  );
}

Map<String, dynamic> _$AthleteToJson(Athlete instance) => <String, dynamic>{
      'id': instance.id,
      'resource_state': instance.resourceState,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
    };
