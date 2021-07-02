// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'club.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Club _$ClubFromJson(Map<String, dynamic> json) {
  return Club(
    fault: json['fault'] == null
        ? null
        : Fault.fromJson(json['fault'] as Map<String, dynamic>),
    id: json['id'] as int?,
    resourceState: json['resource_state'] as int?,
    name: json['name'] as String?,
    profileMedium: json['profile_medium'] as String?,
    profile: json['profile'] as String?,
    coverPhoto: json['cover_photo'] as String?,
    coverPhotoSmall: json['cover_photo_small'] as String?,
    sportType: json['sport_type'] as String?,
    city: json['city'] as String?,
    state: json['state'] as String?,
    country: json['country'] as String?,
    private: json['private'] as bool?,
    memberCount: json['member_count'] as int?,
    featured: json['featured'] as bool?,
    verified: json['verified'] as bool?,
    url: json['url'] as String?,
    membership: json['membership'] as String?,
    admin: json['admin'] as bool?,
    owner: json['owner'] as bool?,
    description: json['description'] as String?,
    clubType: json['club_type'] as String?,
    postCount: json['post_count'] as int?,
    ownerId: json['owner_id'] as int?,
    followingCount: json['following_count'] as int?,
  );
}

Map<String, dynamic> _$ClubToJson(Club instance) => <String, dynamic>{
      'fault': instance.fault?.toJson(),
      'id': instance.id,
      'resource_state': instance.resourceState,
      'name': instance.name,
      'profile_medium': instance.profileMedium,
      'profile': instance.profile,
      'cover_photo': instance.coverPhoto,
      'cover_photo_small': instance.coverPhotoSmall,
      'sport_type': instance.sportType,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'private': instance.private,
      'member_count': instance.memberCount,
      'featured': instance.featured,
      'verified': instance.verified,
      'url': instance.url,
      'membership': instance.membership,
      'admin': instance.admin,
      'owner': instance.owner,
      'description': instance.description,
      'club_type': instance.clubType,
      'post_count': instance.postCount,
      'owner_id': instance.ownerId,
      'following_count': instance.followingCount,
    };
