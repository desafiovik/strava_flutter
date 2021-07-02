// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_athlete.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SummaryAthlete _$SummaryAthleteFromJson(Map<String, dynamic> json) {
  return SummaryAthlete(
    fault: json['fault'] == null
        ? null
        : Fault.fromJson(json['fault'] as Map<String, dynamic>),
    resourceState: json['resource_state'] as int?,
    firstname: json['firstname'] as String?,
    lastname: json['lastname'] as String?,
    membership: json['membership'] as String?,
    admin: json['admin'] as bool?,
    owner: json['owner'] as bool?,
    id: json['id'] as int?,
  );
}

Map<String, dynamic> _$SummaryAthleteToJson(SummaryAthlete instance) =>
    <String, dynamic>{
      'fault': instance.fault?.toJson(),
      'resource_state': instance.resourceState,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'membership': instance.membership,
      'admin': instance.admin,
      'owner': instance.owner,
      'id': instance.id,
    };
