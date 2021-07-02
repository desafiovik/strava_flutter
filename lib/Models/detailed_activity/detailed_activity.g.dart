// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detailed_activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailedActivity _$DetailedActivityFromJson(Map<String, dynamic> json) {
  return DetailedActivity(
    fault: json['fault'] == null
        ? null
        : Fault.fromJson(json['fault'] as Map<String, dynamic>),
    id: json['id'] as int?,
    resourceState: json['resource_state'] as int?,
    externalId: json['external_id'] as String?,
    uploadId: json['upload_id'] as int?,
    athlete: json['athlete'] == null
        ? null
        : Athlete.fromJson(json['athlete'] as Map<String, dynamic>),
    name: json['name'] as String?,
    distance: (json['distance'] as num?)?.toDouble(),
    movingTime: json['moving_time'] as int?,
    elapsedTime: json['elapsed_time'] as int?,
    totalElevationGain: (json['total_elevation_gain'] as num?)?.toDouble(),
    type: json['type'] as String?,
    startDate: json['start_date'] as String?,
    startDateLocal: json['start_date_local'] as String?,
    timezone: json['timezone'] as String?,
    utcOffset: (json['utc_offset'] as num?)?.toDouble(),
    startLatlng: (json['start_latlng'] as List<dynamic>?)
            ?.map((e) => (e as num).toDouble())
            .toList() ??
        [0.0, 0.0],
    endLatlng: (json['end_latlng'] as List<dynamic>?)
        ?.map((e) => (e as num).toDouble())
        .toList(),
    startLatitude: (json['start_latitude'] as num?)?.toDouble(),
    startLongitude: (json['start_longitude'] as num?)?.toDouble(),
    achievementCount: json['achievement_count'] as int?,
    kudosCount: json['kudos_count'] as int?,
    commentCount: json['comment_count'] as int?,
    athleteCount: json['athlete_count'] as int?,
    photoCount: json['photo_count'] as int?,
    map: json['map'] == null
        ? null
        : Carte.fromJson(json['map'] as Map<String, dynamic>),
    trainer: json['trainer'] as bool?,
    commute: json['commute'] as bool?,
    manual: json['manual'] as bool?,
    private: json['private'] as bool?,
    flagged: json['flagged'] as bool?,
    gearId: json['gear_id'] as String?,
    fromAcceptedTag: json['from_accepted_tag'] as bool?,
    averageSpeed: (json['average_speed'] as num?)?.toDouble(),
    maxSpeed: (json['max_speed'] as num?)?.toDouble(),
    averageCadence: (json['average_cadence'] as num?)?.toDouble(),
    averageTemp: json['average_temp'] as int?,
    averageWatts: (json['average_watts'] as num?)?.toDouble(),
    weightedAverageWatts: json['weighted_average_watts'] as int?,
    kilojoules: (json['kilojoules'] as num?)?.toDouble(),
    deviceWatts: json['device_watts'] as bool?,
    hasHeartrate: json['has_heartrate'] as bool?,
    maxWatts: json['max_watts'] as int?,
    elevHigh: (json['elev_high'] as num?)?.toDouble(),
    elevLow: (json['elev_low'] as num?)?.toDouble(),
    prCount: json['pr_count'] as int?,
    totalPhotoCount: json['total_photo_count'] as int?,
    hasKudoed: json['has_kudoed'] as bool?,
    workoutType: json['workout_type'] as int?,
    sufferScore: (json['suffer_score'] as num?)?.toDouble(),
    description: json['description'] as String?,
    calories: (json['calories'] as num?)?.toDouble(),
    segmentEfforts: (json['segment_efforts'] as List<dynamic>?)
        ?.map((e) => SegmentEffort.fromJson(e as Map<String, dynamic>))
        .toList(),
    splitsMetric: (json['splits_metric'] as List<dynamic>?)
        ?.map((e) => SplitsMetric.fromJson(e as Map<String, dynamic>))
        .toList(),
    laps: (json['laps'] as List<dynamic>?)
        ?.map((e) => Laps.fromJson(e as Map<String, dynamic>))
        .toList(),
    gear: json['gear'] == null
        ? null
        : Gear.fromJson(json['gear'] as Map<String, dynamic>),
    partnerBrandTag: json['partner_brand_tag'] as String?,
    photos: json['photos'] == null
        ? null
        : Photos.fromJson(json['photos'] as Map<String, dynamic>),
    highlightedKudosers: (json['highlighted_kudosers'] as List<dynamic>?)
        ?.map((e) => HighlightedKudosers.fromJson(e as Map<String, dynamic>))
        .toList(),
    deviceName: json['device_name'] as String?,
    embedToken: json['embed_token'] as String?,
    segmentLeaderboardOptOut: json['segment_leaderboard_opt_out'] as bool?,
    leaderboardOptOut: json['leaderboard_opt_out'] as bool?,
  );
}

Map<String, dynamic> _$DetailedActivityToJson(DetailedActivity instance) =>
    <String, dynamic>{
      'fault': instance.fault?.toJson(),
      'id': instance.id,
      'resource_state': instance.resourceState,
      'external_id': instance.externalId,
      'upload_id': instance.uploadId,
      'athlete': instance.athlete?.toJson(),
      'name': instance.name,
      'distance': instance.distance,
      'moving_time': instance.movingTime,
      'elapsed_time': instance.elapsedTime,
      'total_elevation_gain': instance.totalElevationGain,
      'type': instance.type,
      'start_date': instance.startDate,
      'start_date_local': instance.startDateLocal,
      'timezone': instance.timezone,
      'utc_offset': instance.utcOffset,
      'start_latlng': instance.startLatlng,
      'end_latlng': instance.endLatlng,
      'start_latitude': instance.startLatitude,
      'start_longitude': instance.startLongitude,
      'achievement_count': instance.achievementCount,
      'kudos_count': instance.kudosCount,
      'comment_count': instance.commentCount,
      'athlete_count': instance.athleteCount,
      'photo_count': instance.photoCount,
      'map': instance.map?.toJson(),
      'trainer': instance.trainer,
      'commute': instance.commute,
      'manual': instance.manual,
      'private': instance.private,
      'flagged': instance.flagged,
      'gear_id': instance.gearId,
      'from_accepted_tag': instance.fromAcceptedTag,
      'average_speed': instance.averageSpeed,
      'max_speed': instance.maxSpeed,
      'average_cadence': instance.averageCadence,
      'average_temp': instance.averageTemp,
      'average_watts': instance.averageWatts,
      'weighted_average_watts': instance.weightedAverageWatts,
      'kilojoules': instance.kilojoules,
      'device_watts': instance.deviceWatts,
      'has_heartrate': instance.hasHeartrate,
      'max_watts': instance.maxWatts,
      'elev_high': instance.elevHigh,
      'elev_low': instance.elevLow,
      'pr_count': instance.prCount,
      'total_photo_count': instance.totalPhotoCount,
      'has_kudoed': instance.hasKudoed,
      'workout_type': instance.workoutType,
      'suffer_score': instance.sufferScore,
      'description': instance.description,
      'calories': instance.calories,
      'segment_efforts':
          instance.segmentEfforts?.map((e) => e.toJson()).toList(),
      'splits_metric': instance.splitsMetric?.map((e) => e.toJson()).toList(),
      'laps': instance.laps?.map((e) => e.toJson()).toList(),
      'gear': instance.gear?.toJson(),
      'partner_brand_tag': instance.partnerBrandTag,
      'photos': instance.photos?.toJson(),
      'highlighted_kudosers':
          instance.highlightedKudosers?.map((e) => e.toJson()).toList(),
      'device_name': instance.deviceName,
      'embed_token': instance.embedToken,
      'segment_leaderboard_opt_out': instance.segmentLeaderboardOptOut,
      'leaderboard_opt_out': instance.leaderboardOptOut,
    };
