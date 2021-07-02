// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detailed_athlete.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailedAthlete _$DetailedAthleteFromJson(Map<String, dynamic> json) {
  return DetailedAthlete(
    fault: json['fault'] == null
        ? null
        : Fault.fromJson(json['fault'] as Map<String, dynamic>),
    id: json['id'] as int?,
    username: json['username'] as String?,
    resourceState: json['resource_state'] as int?,
    firstname: json['firstname'] as String?,
    lastname: json['lastname'] as String?,
    city: json['city'] as String?,
    state: json['state'] as String?,
    country: json['country'] as String?,
    sex: json['sex'] as String?,
    premium: json['premium'] as bool?,
    createdAt: json['created_at'] as String?,
    updatedAt: json['updated_at'] as String?,
    badgeTypeId: json['badge_type_id'] as int?,
    profileMedium: json['profile_medium'] as String?,
    profile: json['profile'] as String?,
    friend: json['friend'] as String?,
    follower: json['follower'] as String?,
    followerCount: json['follower_count'] as int?,
    friendCount: json['friend_count'] as int?,
    mutualFriendCount: json['mutual_friend_count'] as int?,
    athleteType: json['athlete_type'] as int?,
    datePreference: json['date_preference'] as String?,
    measurementPreference: json['measurement_preference'] as String?,
    ftp: json['ftp'] as int?,
    weight: (json['weight'] as num?)?.toDouble(),
    bikes: (json['bikes'] as List<dynamic>?)
        ?.map((e) => Bikes.fromJson(e as Map<String, dynamic>))
        .toList(),
    shoes: (json['shoes'] as List<dynamic>?)
        ?.map((e) => Shoes.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$DetailedAthleteToJson(DetailedAthlete instance) =>
    <String, dynamic>{
      'fault': instance.fault?.toJson(),
      'id': instance.id,
      'username': instance.username,
      'resource_state': instance.resourceState,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'sex': instance.sex,
      'premium': instance.premium,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'badge_type_id': instance.badgeTypeId,
      'profile_medium': instance.profileMedium,
      'profile': instance.profile,
      'friend': instance.friend,
      'follower': instance.follower,
      'follower_count': instance.followerCount,
      'friend_count': instance.friendCount,
      'mutual_friend_count': instance.mutualFriendCount,
      'athlete_type': instance.athleteType,
      'date_preference': instance.datePreference,
      'measurement_preference': instance.measurementPreference,
      'ftp': instance.ftp,
      'weight': instance.weight,
      'bikes': instance.bikes?.map((e) => e.toJson()).toList(),
      'shoes': instance.shoes?.map((e) => e.toJson()).toList(),
    };
